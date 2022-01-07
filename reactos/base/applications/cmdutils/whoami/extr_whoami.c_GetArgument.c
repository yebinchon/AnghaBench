
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ wcsicmp (int *,int *) ;

BOOL GetArgument(WCHAR* arg, int argc, WCHAR* argv[])
{
    int i;

    if (!arg)
        return FALSE;

    for (i = 1; i < argc; i++)
    {
        if (wcsicmp(argv[i], arg) == 0)
            return TRUE;
    }

    return FALSE;
}
