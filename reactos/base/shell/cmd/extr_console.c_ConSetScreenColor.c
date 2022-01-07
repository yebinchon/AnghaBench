
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_6__ {int X; int Y; } ;
struct TYPE_8__ {TYPE_1__ dwSize; } ;
struct TYPE_7__ {scalar_t__ Y; scalar_t__ X; } ;
typedef int HANDLE ;
typedef int DWORD ;
typedef TYPE_2__ COORD ;
typedef TYPE_3__ CONSOLE_SCREEN_BUFFER_INFO ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int FillConsoleOutputAttribute (int ,int,int,TYPE_2__,int *) ;
 int GetConsoleScreenBufferInfo (int ,TYPE_3__*) ;
 int SetConsoleTextAttribute (int ,int) ;
 scalar_t__ TRUE ;

BOOL ConSetScreenColor(HANDLE hOutput, WORD wColor, BOOL bFill)
{
    DWORD dwWritten;
    CONSOLE_SCREEN_BUFFER_INFO csbi;
    COORD coPos;


    if ((wColor & 0x0F) == (wColor & 0xF0) >> 4)
        return FALSE;


    if (bFill)
    {
        GetConsoleScreenBufferInfo(hOutput, &csbi);

        coPos.X = 0;
        coPos.Y = 0;
        FillConsoleOutputAttribute(hOutput,
                                   wColor & 0x00FF,
                                   csbi.dwSize.X * csbi.dwSize.Y,
                                   coPos,
                                   &dwWritten);
    }


    SetConsoleTextAttribute(hOutput, wColor & 0x00FF);
    return TRUE;
}
