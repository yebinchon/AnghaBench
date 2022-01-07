
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int dwSize; scalar_t__ bVisible; } ;
typedef TYPE_1__ CONSOLE_CURSOR_INFO ;
typedef scalar_t__ BOOL ;


 int GetStdHandle (int ) ;
 int STD_OUTPUT_HANDLE ;
 int SetConsoleCursorInfo (int ,TYPE_1__*) ;

VOID SetCursorType(BOOL bInsert, BOOL bVisible)
{
    CONSOLE_CURSOR_INFO cci;

    cci.dwSize = bInsert ? 10 : 99;
    cci.bVisible = bVisible;

    SetConsoleCursorInfo(GetStdHandle(STD_OUTPUT_HANDLE), &cci);
}
