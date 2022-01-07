
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ Right; scalar_t__ Bottom; } ;
struct TYPE_6__ {scalar_t__ X; scalar_t__ Y; } ;
typedef scalar_t__ SHORT ;
typedef int LPCSTR ;
typedef int DWORD ;
typedef TYPE_1__ COORD ;
typedef int BOOL ;


 scalar_t__ Columns ;
 int FillConsoleOutputAttribute (int ,int ,int,TYPE_1__,int*) ;
 scalar_t__ WriteConsoleOutputCharacter (int ,int ,int,TYPE_1__,int*) ;
 int g_attrCurrent ;
 TYPE_1__ g_coord ;
 int g_hConOut ;
 TYPE_2__ g_srScrollRegion ;
 int gotoxy (scalar_t__,scalar_t__) ;

__attribute__((used)) static BOOL
write_chars(
    LPCSTR pchBuf,
    DWORD cchToWrite)
{
    COORD coord = g_coord;
    DWORD written;

    FillConsoleOutputAttribute(g_hConOut, g_attrCurrent, cchToWrite,
    coord, &written);


    if (WriteConsoleOutputCharacter(g_hConOut, pchBuf, cchToWrite,
    coord, &written) == 0
     || written == 0)
 written = 1;

    g_coord.X += (SHORT) written;

    while (g_coord.X > g_srScrollRegion.Right)
    {
 g_coord.X -= (SHORT) Columns;
 if (g_coord.Y < g_srScrollRegion.Bottom)
     g_coord.Y++;
    }

    gotoxy(g_coord.X + 1, g_coord.Y + 1);

    return written;
}
