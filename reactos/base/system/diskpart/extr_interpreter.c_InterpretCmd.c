
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; int (* func ) (int,int *) ;} ;
typedef TYPE_1__* PCOMMAND ;
typedef int LPWSTR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 TYPE_1__* cmds ;
 int help_cmdlist () ;
 int stub1 (int,int *) ;
 scalar_t__ wcsicmp (int ,char*) ;

BOOL
InterpretCmd(int argc, LPWSTR *argv)
{
    PCOMMAND cmdptr;


    if (argc < 1)
        return TRUE;



    if(wcsicmp(argv[0], L"exit") == 0)
        return FALSE;

    if(wcsicmp(argv[0], L"rem") == 0)
        return TRUE;


    for (cmdptr = cmds; cmdptr->name; cmdptr++)
    {
        if (wcsicmp(argv[0], cmdptr->name) == 0)
            return cmdptr->func(argc, argv);
    }

    help_cmdlist();

    return TRUE;
}
