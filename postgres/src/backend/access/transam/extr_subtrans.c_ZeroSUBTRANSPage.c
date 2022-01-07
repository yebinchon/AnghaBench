
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SimpleLruZeroPage (int ,int) ;
 int SubTransCtl ;

__attribute__((used)) static int
ZeroSUBTRANSPage(int pageno)
{
 return SimpleLruZeroPage(SubTransCtl, pageno);
}
