
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PCONSOLE_STATE ;
typedef int LPSTR ;
typedef int INT ;


 int CONSOLE_ClearScreen () ;
 int CONSOLE_SetCursorXY (int ,int ) ;
 int HelpCls () ;
 int strcmp (int ,char*) ;

__attribute__((used)) static
INT
CommandCls(
    PCONSOLE_STATE State,
    LPSTR param)
{
    if (!strcmp(param, "/?"))
    {
        HelpCls();
        return 0;
    }

    CONSOLE_ClearScreen();
    CONSOLE_SetCursorXY(0, 0);

    return 0;
}
