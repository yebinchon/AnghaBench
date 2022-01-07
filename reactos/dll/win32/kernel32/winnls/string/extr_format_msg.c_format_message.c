
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct format_args {int list; int args; } ;
struct _format_message_data {int size; char* formatted; char* t; int width; int * space; void* inspace; scalar_t__ w; } ;
typedef char WCHAR ;
typedef char* LPWSTR ;
typedef char* LPCWSTR ;
typedef int DWORD ;
typedef void* BOOL ;


 int ERROR_INVALID_PARAMETER ;
 void* FALSE ;
 int FORMAT_MESSAGE_ARGUMENT_ARRAY ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 int FORMAT_MESSAGE_MAX_WIDTH_MASK ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 int SetLastError (int ) ;
 void* TRUE ;
 int format_add_char (struct _format_message_data*,char) ;
 char* format_insert (void*,int,char*,int,struct format_args*,char**) ;

__attribute__((used)) static LPWSTR format_message( BOOL unicode_caller, DWORD dwFlags, LPCWSTR fmtstr,
                              struct format_args *format_args )
{
    struct _format_message_data fmd;
    LPCWSTR f;
    BOOL eos = FALSE;

    fmd.size = 100;
    fmd.formatted = fmd.t = HeapAlloc( GetProcessHeap(), 0, (fmd.size + 2) * sizeof(WCHAR) );

    fmd.width = dwFlags & FORMAT_MESSAGE_MAX_WIDTH_MASK;
    fmd.w = 0;
    fmd.inspace = FALSE;
    fmd.space = ((void*)0);
    f = fmtstr;
    while (*f && !eos) {
        if (*f=='%') {
            int insertnr;
            WCHAR *str,*x;

            f++;
            switch (*f) {
            case '1':case '2':case '3':case '4':case '5':
            case '6':case '7':case '8':case '9':
                if (dwFlags & FORMAT_MESSAGE_IGNORE_INSERTS)
                    goto ignore_inserts;
                else if (((dwFlags & FORMAT_MESSAGE_ARGUMENT_ARRAY) && !format_args->args) ||
                        (!(dwFlags & FORMAT_MESSAGE_ARGUMENT_ARRAY) && !format_args->list))
                {
                    SetLastError(ERROR_INVALID_PARAMETER);
                    HeapFree(GetProcessHeap(), 0, fmd.formatted);
                    return ((void*)0);
                }
                insertnr = *f-'0';
                switch (f[1]) {
                case '0':case '1':case '2':case '3':
                case '4':case '5':case '6':case '7':
                case '8':case '9':
                    f++;
                    insertnr = insertnr*10 + *f-'0';
                    f++;
                    break;
                default:
                    f++;
                    break;
                }
                f = format_insert( unicode_caller, insertnr, f, dwFlags, format_args, &str );
                for (x = str; *x; x++) format_add_char(&fmd, *x);
                HeapFree( GetProcessHeap(), 0, str );
                break;
            case 'n':
                format_add_char(&fmd, '\r');
                format_add_char(&fmd, '\n');
                f++;
                break;
            case 'r':
                format_add_char(&fmd, '\r');
                f++;
                break;
            case 't':
                format_add_char(&fmd, '\t');
                f++;
                break;
            case '0':
                eos = TRUE;
                f++;
                break;
            case '\0':
                SetLastError(ERROR_INVALID_PARAMETER);
                HeapFree(GetProcessHeap(), 0, fmd.formatted);
                return ((void*)0);
            ignore_inserts:
            default:
                if (dwFlags & FORMAT_MESSAGE_IGNORE_INSERTS)
                    format_add_char(&fmd, '%');
                format_add_char(&fmd, *f++);
                break;
            }
        } else {
            WCHAR ch = *f;
            f++;
            if (ch == '\r') {
                if (*f == '\n')
                    f++;
                if(fmd.width)
                    format_add_char(&fmd, ' ');
                else
                {
                    format_add_char(&fmd, '\r');
                    format_add_char(&fmd, '\n');
                }
            } else {
                if (ch == '\n')
                {
                    if(fmd.width)
                        format_add_char(&fmd, ' ');
                    else
                    {
                        format_add_char(&fmd, '\r');
                        format_add_char(&fmd, '\n');
                    }
                }
                else
                    format_add_char(&fmd, ch);
            }
        }
    }
    *fmd.t = '\0';

    return fmd.formatted;
}
