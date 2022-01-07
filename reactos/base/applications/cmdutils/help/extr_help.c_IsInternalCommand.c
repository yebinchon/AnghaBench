
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PCWSTR ;
typedef int BOOL ;


 size_t ARRAYSIZE (int *) ;
 int FALSE ;
 int * InternalCommands ;
 int TRUE ;
 int _wcsicmp (int ,int ) ;

__attribute__((used)) static BOOL
IsInternalCommand(PCWSTR Cmd)
{
    size_t i;
    int res;


    if (!Cmd) return FALSE;

    for (i = 0; i < ARRAYSIZE(InternalCommands); ++i)
    {
        res = _wcsicmp(InternalCommands[i], Cmd);
        if (res == 0)
        {

            return TRUE;
        }
        else if (res > 0)
        {





            break;
        }
    }


    return FALSE;
}
