
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_7__ {int X; int Y; } ;
struct TYPE_9__ {TYPE_1__ dwSize; } ;
struct TYPE_8__ {scalar_t__ Y; scalar_t__ X; } ;
typedef int DWORD ;
typedef TYPE_2__ COORD ;
typedef TYPE_3__ CONSOLE_SCREEN_BUFFER_INFO ;
typedef int BOOL ;


 int FALSE ;
 int FillConsoleOutputAttribute (int ,int ,int,TYPE_2__,int*) ;
 int FillConsoleOutputCharacter (int ,char,int,TYPE_2__,int*) ;
 int GetConsoleScreenBufferInfo (int ,TYPE_3__*) ;
 int TRUE ;
 int g_hConOut ;

__attribute__((used)) static BOOL
ClearConsoleBuffer(WORD wAttribute)
{
    CONSOLE_SCREEN_BUFFER_INFO csbi;
    COORD coord;
    DWORD NumCells, dummy;

    if (!GetConsoleScreenBufferInfo(g_hConOut, &csbi))
 return FALSE;

    NumCells = csbi.dwSize.X * csbi.dwSize.Y;
    coord.X = 0;
    coord.Y = 0;
    if (!FillConsoleOutputCharacter(g_hConOut, ' ', NumCells,
     coord, &dummy))
    {
 return FALSE;
    }
    if (!FillConsoleOutputAttribute(g_hConOut, wAttribute, NumCells,
     coord, &dummy))
    {
 return FALSE;
    }

    return TRUE;
}
