
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {int X; int Y; } ;
struct TYPE_5__ {TYPE_1__ dwSize; } ;
typedef int* PSHORT ;
typedef TYPE_2__ CONSOLE_SCREEN_BUFFER_INFO ;


 int GetConsoleScreenBufferInfo (int ,TYPE_2__*) ;
 int GetStdHandle (int ) ;
 int STD_OUTPUT_HANDLE ;

VOID GetScreenSize(PSHORT maxx, PSHORT maxy)
{
    CONSOLE_SCREEN_BUFFER_INFO csbi;

    if (!GetConsoleScreenBufferInfo(GetStdHandle(STD_OUTPUT_HANDLE), &csbi))
    {
        csbi.dwSize.X = 80;
        csbi.dwSize.Y = 25;
    }

    if (maxx) *maxx = csbi.dwSize.X;
    if (maxy) *maxy = csbi.dwSize.Y;
}
