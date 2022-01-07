
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int HANDLE ;


 int Beep (int,int) ;
 int ConOutPuts (int ) ;
 scalar_t__ IsConsoleHandle (int ) ;
 scalar_t__ IsTTYHandle (int ) ;
 int MessageBeep (int) ;
 int _T (char*) ;

VOID ConRingBell(HANDLE hOutput)
{
        MessageBeep(-1);
}
