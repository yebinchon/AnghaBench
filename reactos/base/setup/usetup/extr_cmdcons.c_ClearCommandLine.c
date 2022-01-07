
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int SHORT ;
typedef int LPSTR ;
typedef scalar_t__ INT ;


 int CONSOLE_ConOutChar (char) ;
 int CONSOLE_SetCursorXY (int ,int ) ;
 int memset (int ,int ,scalar_t__) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static
VOID
ClearCommandLine(
    LPSTR str,
    INT maxlen,
    SHORT orgx,
    SHORT orgy)
{
    INT count;

    CONSOLE_SetCursorXY(orgx, orgy);
    for (count = 0; count < (INT)strlen(str); count++)
        CONSOLE_ConOutChar(' ');
    memset(str, 0, maxlen);
    CONSOLE_SetCursorXY(orgx, orgy);
}
