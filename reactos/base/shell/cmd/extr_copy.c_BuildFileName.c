
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* LPTSTR ;


 scalar_t__ _T (char) ;

__attribute__((used)) static void
BuildFileName(
    LPTSTR pszSource,
    LPTSTR pszTarget,
    LPTSTR pszOutput)
{

    while (*pszTarget != 0)
    {
        if (*pszTarget == _T('*'))
        {
            pszTarget++;
            while ((*pszSource != 0) && (*pszSource != *pszTarget))
            {
                *pszOutput++ = *pszSource++;
            }
        }
        else if (*pszTarget == _T('?'))
        {
            pszTarget++;
            if (*pszSource != 0)
            {
                *pszOutput++ = *pszSource++;
            }
        }
        else
        {
            *pszOutput++ = *pszTarget++;
            if (*pszSource != 0)
                pszSource++;
        }
    }

    *pszOutput = 0;
}
