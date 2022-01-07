
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int X; int Y; } ;
struct TYPE_5__ {TYPE_1__ dwMaximumWindowSize; } ;
typedef TYPE_2__ CONSOLE_SCREEN_BUFFER_INFO ;


 scalar_t__ GetConsoleScreenBufferInfo (int ,TYPE_2__*) ;
 int GetStdHandle (int ) ;
 int STD_OUTPUT_HANDLE ;

void terminal_get_size(int *w, int *h)
{
    CONSOLE_SCREEN_BUFFER_INFO cinfo;
    if (GetConsoleScreenBufferInfo(GetStdHandle(STD_OUTPUT_HANDLE), &cinfo)) {
        *w = cinfo.dwMaximumWindowSize.X - 1;
        *h = cinfo.dwMaximumWindowSize.Y;
    }
}
