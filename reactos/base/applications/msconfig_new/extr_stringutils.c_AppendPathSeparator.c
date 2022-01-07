
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* LPTSTR ;


 size_t MAX_PATH ;
 scalar_t__ _T (char) ;
 size_t _tcslen (scalar_t__*) ;

LPTSTR AppendPathSeparator(LPTSTR lpszPath)
{
    size_t iLen = 0;

    if (!lpszPath || (iLen = _tcslen(lpszPath)) >= MAX_PATH)
        return ((void*)0);

    if (iLen >= 1)
    {
        lpszPath += iLen - 1;
        if (*lpszPath++ != _T('\\'))
        {
            *lpszPath++ = _T('\\');
            *lpszPath = _T('\0');
        }
    }

    return lpszPath;
}
