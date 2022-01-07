
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_7__ {int X; int Y; } ;
struct TYPE_9__ {TYPE_1__ dwSize; } ;
struct TYPE_8__ {int member_1; int member_0; } ;
typedef int NTSTATUS ;
typedef int HANDLE ;
typedef int DWORD ;
typedef TYPE_2__ COORD ;
typedef TYPE_3__ CONSOLE_SCREEN_BUFFER_INFO ;


 int FillConsoleOutputCharacter (int ,int,int,TYPE_2__,int *) ;
 int GetConsoleScreenBufferInfo (int ,TYPE_3__*) ;
 int GetStdHandle (int ) ;
 int STATUS_SUCCESS ;
 int STD_OUTPUT_HANDLE ;
 int SetConsoleCursorPosition (int ,TYPE_2__) ;

NTSTATUS kuhl_m_standard_cls(int argc, wchar_t * argv[])
{
 HANDLE hStdOut = GetStdHandle(STD_OUTPUT_HANDLE);
 COORD coord = {0, 0};
 DWORD count;
 CONSOLE_SCREEN_BUFFER_INFO csbi;

 GetConsoleScreenBufferInfo(hStdOut, &csbi);
 FillConsoleOutputCharacter(hStdOut, L' ', csbi.dwSize.X * csbi.dwSize.Y, coord, &count);
 SetConsoleCursorPosition(hStdOut, coord);
 return STATUS_SUCCESS;
}
