
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int wcsspn (int*,char*) ;

__attribute__((used)) static BOOL GetArg(WCHAR **pStart, WCHAR **pEnd)
{
    BOOL bInQuotes = FALSE;
    WCHAR *p = *pEnd;
    p += wcsspn(p, L" \t");
    if (!*p)
        return FALSE;
    *pStart = p;
    do
    {
        if (!bInQuotes && (*p == L' ' || *p == L'\t'))
            break;
        bInQuotes ^= (*p++ == L'"');
    } while (*p);
    *pEnd = p;
    return TRUE;
}
