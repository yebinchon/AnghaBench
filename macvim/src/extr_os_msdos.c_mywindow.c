
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S_iBottom ;
 int S_iLeft ;
 int S_iRight ;
 int S_iTop ;
 int window (int,int,int,int) ;

__attribute__((used)) static void
mywindow(int iLeft, int iTop, int iRight, int iBottom)
{
    S_iLeft = iLeft;
    S_iTop = iTop;
    S_iRight = iRight;
    S_iBottom = iBottom;
    window(iLeft, iTop, iRight, iBottom);
}
