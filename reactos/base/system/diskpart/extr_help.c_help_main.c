
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int help; scalar_t__ name; } ;
typedef TYPE_1__* PCOMMAND ;
typedef int LPWSTR ;
typedef int INT ;
typedef int BOOL ;


 int ConResPuts (int ,int ) ;
 int StdOut ;
 int TRUE ;
 scalar_t__ _wcsicmp (int ,scalar_t__) ;
 TYPE_1__* cmds ;
 int help_cmdlist () ;

BOOL help_main(INT argc, LPWSTR *argv)
{
    PCOMMAND cmdptr;

    if (argc == 1)
    {
        help_cmdlist();
        return TRUE;
    }


    for (cmdptr = cmds; cmdptr->name; cmdptr++)
    {
        if (_wcsicmp(argv[1], cmdptr->name) == 0)
        {
            ConResPuts(StdOut, cmdptr->help);
            return TRUE;
        }
    }

    help_cmdlist();

    return TRUE;
}
