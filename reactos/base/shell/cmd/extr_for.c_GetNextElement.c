
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TCHAR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ _T (char) ;
 scalar_t__ _istspace (scalar_t__) ;

__attribute__((used)) static BOOL GetNextElement(TCHAR **pStart, TCHAR **pEnd)
{
    TCHAR *p = *pEnd;
    BOOL InQuotes = FALSE;
    while (_istspace(*p))
        p++;
    if (!*p)
        return FALSE;
    *pStart = p;
    while (*p && (InQuotes || !_istspace(*p)))
        InQuotes ^= (*p++ == _T('"'));
    *pEnd = p;
    return TRUE;
}
