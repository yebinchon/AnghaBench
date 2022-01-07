
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int HANDLE ;
typedef int DWORD ;


 int ENABLE_EXTENDED_FLAGS ;
 int ENABLE_INSERT_MODE ;
 int GetConsoleMode (int ,int*) ;
 int GetStdHandle (int ) ;
 int STD_INPUT_HANDLE ;
 int SetConsoleMode (int ,int) ;

__attribute__((used)) static VOID SetInsert(DWORD dwFlag)
{




    DWORD dwMode;
    HANDLE hConsole = GetStdHandle(STD_INPUT_HANDLE);
    GetConsoleMode(hConsole, &dwMode);
    dwMode |= ENABLE_EXTENDED_FLAGS;
    SetConsoleMode(hConsole, (dwMode & ~ENABLE_INSERT_MODE) | dwFlag);
}
