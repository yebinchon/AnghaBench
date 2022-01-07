
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct format_args {int last; scalar_t__ list; } ;
typedef char WCHAR ;
typedef char ULONG_PTR ;
typedef char* LPWSTR ;
typedef char* LPCWSTR ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CP_ACP ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 int MultiByteToWideChar (int ,int ,char const*,int,char*,int) ;
 char get_arg (int,int,struct format_args*) ;
 scalar_t__ isdigitW (char) ;
 int max (int,int) ;
 int snprintfW (char*,int,char*,char) ;
 int sprintfW (char*,char const*,char) ;
 int strcpyW (char*,char const*) ;
 int strlenW (char const*) ;

__attribute__((used)) static LPCWSTR format_insert( BOOL unicode_caller, int insert, LPCWSTR format,
                              DWORD flags, struct format_args *args,
                              LPWSTR *result )
{
    static const WCHAR fmt_u[] = {'%','u',0};
    WCHAR *wstring = ((void*)0), *p, fmt[256];
    ULONG_PTR arg;
    int size;

    if (*format != '!')
    {
        arg = get_arg( insert, flags, args );
        if (unicode_caller || !arg)
        {
            static const WCHAR nullW[] = {'(','n','u','l','l',')',0};
            const WCHAR *str = (const WCHAR *)arg;

            if (!str) str = nullW;
            *result = HeapAlloc( GetProcessHeap(), 0, (strlenW(str) + 1) * sizeof(WCHAR) );
            strcpyW( *result, str );
        }
        else
        {
            const char *str = (const char *)arg;
            DWORD length = MultiByteToWideChar( CP_ACP, 0, str, -1, ((void*)0), 0 );
            *result = HeapAlloc( GetProcessHeap(), 0, length * sizeof(WCHAR) );
            MultiByteToWideChar( CP_ACP, 0, str, -1, *result, length );
        }
        return format;
    }

    format++;
    p = fmt;
    *p++ = '%';

    while (*format == '0' ||
           *format == '+' ||
           *format == '-' ||
           *format == ' ' ||
           *format == '*' ||
           *format == '#')
    {
        if (*format == '*')
        {
            p += sprintfW( p, fmt_u, get_arg( insert, flags, args ));
            insert = -1;
            format++;
        }
        else *p++ = *format++;
    }
    while (isdigitW(*format)) *p++ = *format++;

    if (*format == '.')
    {
        *p++ = *format++;
        if (*format == '*')
        {
            p += sprintfW( p, fmt_u, get_arg( insert, flags, args ));
            insert = -1;
            format++;
        }
        else
            while (isdigitW(*format)) *p++ = *format++;
    }


    if (insert == -1 && args->list) args->last--;
    arg = get_arg( insert, flags, args );


    if ((format[0] == 'h' && format[1] == 's') ||
        (format[0] == 'h' && format[1] == 'S') ||
        (unicode_caller && format[0] == 'S') ||
        (!unicode_caller && format[0] == 's'))
    {
        DWORD len = MultiByteToWideChar( CP_ACP, 0, (char *)arg, -1, ((void*)0), 0 );
        wstring = HeapAlloc( GetProcessHeap(), 0, len * sizeof(WCHAR) );
        MultiByteToWideChar( CP_ACP, 0, (char *)arg, -1, wstring, len );
        arg = (ULONG_PTR)wstring;
        *p++ = 's';
    }

    else if ((format[0] == 'h' && format[1] == 'c') ||
             (format[0] == 'h' && format[1] == 'C') ||
             (unicode_caller && format[0] == 'C') ||
             (!unicode_caller && format[0] == 'c'))
    {
        char ch = arg;
        wstring = HeapAlloc( GetProcessHeap(), 0, 2 * sizeof(WCHAR) );
        MultiByteToWideChar( CP_ACP, 0, &ch, 1, wstring, 1 );
        wstring[1] = 0;
        arg = (ULONG_PTR)wstring;
        *p++ = 's';
    }

    else if ((format[0] == 'l' && format[1] == 's') ||
             (format[0] == 'l' && format[1] == 'S') ||
             (format[0] == 'w' && format[1] == 's') ||
             (!unicode_caller && format[0] == 'S'))
    {
        *p++ = 's';
    }

    else if ((format[0] == 'l' && format[1] == 'c') ||
             (format[0] == 'l' && format[1] == 'C') ||
             (format[0] == 'w' && format[1] == 'c') ||
             (!unicode_caller && format[0] == 'C'))
    {
        *p++ = 'c';
    }

    else while (*format && *format != '!') *p++ = *format++;

    *p = 0;
    size = 256;
    for (;;)
    {
        WCHAR *ret = HeapAlloc( GetProcessHeap(), 0, size * sizeof(WCHAR) );
        int needed = snprintfW( ret, size, fmt, arg );
        if (needed == -1 || needed >= size)
        {
            HeapFree( GetProcessHeap(), 0, ret );
            size = max( needed + 1, size * 2 );
        }
        else
        {
            *result = ret;
            break;
        }
    }

    while (*format && *format != '!') format++;
    if (*format == '!') format++;

    HeapFree( GetProcessHeap(), 0, wstring );
    return format;
}
