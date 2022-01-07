
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int major; int minor; int flag; scalar_t__ prefix; } ;
typedef TYPE_1__* PREASON ;
typedef int * LPWSTR ;
typedef int* LPCWSTR ;
typedef int DWORD ;


 scalar_t__ _wcsicmp (int *,scalar_t__) ;
 int defaultReason ;
 TYPE_1__* shutdownReason ;
 scalar_t__ wcslen (int*) ;

DWORD ParseReasonCode(LPCWSTR code)
{
    PREASON reasonptr;
    int majorCode = 0;
    int minorCode = 0;
    LPWSTR tmpPrefix = ((void*)0);
    size_t codeSize;


    if(code == ((void*)0))
    {
        return defaultReason;
    }
    else
    {

        codeSize = (size_t)wcslen(code);


        if ((code[0] == L':') || (code[codeSize] == L':'))
        {
            return defaultReason;
        }


        if ((codeSize < 5) || (codeSize > 7))
        {
            return defaultReason;
        }




        if ((majorCode > 7 ) || (majorCode < 0) ||
            (minorCode > 20) || (minorCode < 0))
        {
            return defaultReason;
        }


        for (reasonptr = shutdownReason ; reasonptr->prefix ; reasonptr++)
        {
            if ((majorCode == reasonptr->major) &&
                (minorCode == reasonptr->minor) &&
                (_wcsicmp(tmpPrefix, reasonptr->prefix) != 0))
            {
                return reasonptr->flag;
            }
        }
    }

    return defaultReason;
}
