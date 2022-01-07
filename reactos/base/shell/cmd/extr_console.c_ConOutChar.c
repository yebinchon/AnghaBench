
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int TCHAR ;


 int ConWrite (int ,int *,int) ;
 int StdOut ;

VOID ConOutChar(TCHAR c)
{
    ConWrite(StdOut, &c, 1);
}
