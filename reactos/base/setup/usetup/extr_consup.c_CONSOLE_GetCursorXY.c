
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {int Y; int X; } ;
struct TYPE_5__ {TYPE_1__ dwCursorPosition; } ;
typedef int * PSHORT ;
typedef TYPE_2__ CONSOLE_SCREEN_BUFFER_INFO ;


 int GetConsoleScreenBufferInfo (int ,TYPE_2__*) ;
 int GetStdHandle (int ) ;
 int STD_OUTPUT_HANDLE ;

VOID
CONSOLE_GetCursorXY(
    PSHORT x,
    PSHORT y)
{
    CONSOLE_SCREEN_BUFFER_INFO csbi;

    GetConsoleScreenBufferInfo(GetStdHandle(STD_OUTPUT_HANDLE), &csbi);

    *x = csbi.dwCursorPosition.X;
    *y = csbi.dwCursorPosition.Y;
}
