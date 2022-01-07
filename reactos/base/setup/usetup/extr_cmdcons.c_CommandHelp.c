
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* help ) () ;int * name; } ;
typedef int PCONSOLE_STATE ;
typedef int * LPSTR ;
typedef TYPE_1__* LPCOMMAND ;
typedef int INT ;


 int CONSOLE_ConOutPrintf (char*) ;
 TYPE_1__* Commands ;
 int DPRINT1 (char*,int *,scalar_t__,int *) ;
 int HelpHelp () ;
 int strcmp (int *,char*) ;
 int stricmp (int *,int *) ;
 scalar_t__ strlen (int *) ;
 int stub1 () ;

__attribute__((used)) static
INT
CommandHelp(
    PCONSOLE_STATE State,
    LPSTR param)
{
    LPCOMMAND cmdptr;

    DPRINT1("param: %p %u '%s'\n", param, strlen(param), param);

    if (!strcmp(param, "/?"))
    {
        HelpHelp();
        return 0;
    }

    if (param != ((void*)0) && strlen(param) > 0)
    {
        for (cmdptr = Commands; cmdptr->name != ((void*)0); cmdptr++)
        {
            if (!stricmp(param, cmdptr->name))
            {
                if (cmdptr->help != ((void*)0))
                {
                    cmdptr->help();
                    return 0;
                }
            }
        }
    }

    CONSOLE_ConOutPrintf("CLS\n");
    CONSOLE_ConOutPrintf("DUMPSECTOR\n");
    CONSOLE_ConOutPrintf("EXIT\n");
    CONSOLE_ConOutPrintf("HELP\n");
    CONSOLE_ConOutPrintf("\n");

    return 0;
}
