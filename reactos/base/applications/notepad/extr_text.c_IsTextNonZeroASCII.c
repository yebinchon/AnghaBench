
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

BOOL IsTextNonZeroASCII(const void *pText, DWORD dwSize)
{
    const signed char *pBytes = pText;
    while (dwSize-- > 0)
    {
        if (*pBytes <= 0)
            return FALSE;

        ++pBytes;
    }
    return TRUE;
}
