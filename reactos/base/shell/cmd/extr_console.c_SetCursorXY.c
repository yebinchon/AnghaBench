
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {void* Y; void* X; } ;
typedef void* SHORT ;
typedef TYPE_1__ COORD ;


 int GetStdHandle (int ) ;
 int STD_OUTPUT_HANDLE ;
 int SetConsoleCursorPosition (int ,TYPE_1__) ;

VOID SetCursorXY(SHORT x, SHORT y)
{
    COORD coPos;

    coPos.X = x;
    coPos.Y = y;
    SetConsoleCursorPosition(GetStdHandle(STD_OUTPUT_HANDLE), coPos);
}
