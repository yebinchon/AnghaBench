
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bExit; } ;
typedef TYPE_1__* PCONSOLE_STATE ;
typedef int LPSTR ;
typedef int INT ;


 int HelpExit () ;
 int TRUE ;
 int strcmp (int ,char*) ;

__attribute__((used)) static
INT
CommandExit(
    PCONSOLE_STATE State,
    LPSTR param)
{
    if (!strcmp(param, "/?"))
    {
        HelpExit();
        return 0;
    }

    State->bExit = TRUE;

    return 0;
}
