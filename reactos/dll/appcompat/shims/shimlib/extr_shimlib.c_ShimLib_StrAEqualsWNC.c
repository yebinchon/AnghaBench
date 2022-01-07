
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PCWSTR ;
typedef int * PCSTR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ toupper (int ) ;
 scalar_t__ towupper (int ) ;

BOOL ShimLib_StrAEqualsWNC(PCSTR szString, PCWSTR wszString)
{
    while (toupper(*szString) == towupper(*wszString))
    {
        if (!*szString)
            return TRUE;

        szString++; wszString++;
    }
    return FALSE;
}
