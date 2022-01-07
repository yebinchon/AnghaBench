
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct OIDToString {int id; } ;
typedef int parFmt ;
typedef char WCHAR ;
struct TYPE_3__ {int cbSize; int dxStartIndent; int dwMask; } ;
typedef TYPE_1__ PARAFORMAT2 ;
typedef int LPWSTR ;
typedef char* LPCSTR ;
typedef int HWND ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 int LoadStringW (int ,int ,int ,int ) ;
 int MAX_STRING_LEN ;
 int MY_INDENT ;
 int PFM_STARTINDENT ;
 scalar_t__ TRUE ;
 int add_text_with_paraformat_to_control (int ,char*,int,TYPE_1__*) ;
 int add_unformatted_text_to_control (int ,char*,int) ;
 struct OIDToString* findSupportedOID (char*) ;
 int hInstance ;
 int lstrcpynW (char*,char*,int) ;
 int lstrlenW (char*) ;
 int strlen (char*) ;
 char* wmemchr (char*,char,int) ;

__attribute__((used)) static void add_local_oid_text_to_control(HWND text, LPCSTR oid)
{
    struct OIDToString *entry;
    WCHAR nl = '\n';
    PARAFORMAT2 parFmt;

    parFmt.cbSize = sizeof(parFmt);
    parFmt.dwMask = PFM_STARTINDENT;
    parFmt.dxStartIndent = MY_INDENT * 3;
    if ((entry = findSupportedOID(oid)))
    {
        WCHAR *str, *linebreak, *ptr;
        BOOL multiline = FALSE;
        int len;

        len = LoadStringW(hInstance, entry->id, (LPWSTR)&str, 0);
        ptr = str;
        do {
            if ((linebreak = wmemchr(ptr, '\n', len)))
            {
                WCHAR copy[MAX_STRING_LEN];

                multiline = TRUE;







                lstrcpynW(copy, ptr, linebreak - ptr + 1);
                add_text_with_paraformat_to_control(text, copy,
                 linebreak - ptr, &parFmt);
                ptr = linebreak + 1;
                add_unformatted_text_to_control(text, &nl, 1);
            }
            else if (multiline && *ptr)
            {

                add_text_with_paraformat_to_control(text, ptr,
                 len - (ptr - str), &parFmt);
                add_unformatted_text_to_control(text, &nl, 1);
            }
        } while (linebreak);
        if (!multiline)
        {
            add_text_with_paraformat_to_control(text, str, len, &parFmt);
            add_unformatted_text_to_control(text, &nl, 1);
        }
    }
    else
    {
        WCHAR *oidW = HeapAlloc(GetProcessHeap(), 0,
         (strlen(oid) + 1) * sizeof(WCHAR));

        if (oidW)
        {
            LPCSTR src;
            WCHAR *dst;

            for (src = oid, dst = oidW; *src; src++, dst++)
                *dst = *src;
            *dst = 0;
            add_text_with_paraformat_to_control(text, oidW, lstrlenW(oidW),
             &parFmt);
            add_unformatted_text_to_control(text, &nl, 1);
            HeapFree(GetProcessHeap(), 0, oidW);
        }
    }
}
