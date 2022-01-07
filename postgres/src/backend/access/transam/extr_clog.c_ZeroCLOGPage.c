
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ClogCtl ;
 int SimpleLruZeroPage (int ,int) ;
 int WriteZeroPageXlogRec (int) ;

__attribute__((used)) static int
ZeroCLOGPage(int pageno, bool writeXlog)
{
 int slotno;

 slotno = SimpleLruZeroPage(ClogCtl, pageno);

 if (writeXlog)
  WriteZeroPageXlogRec(pageno);

 return slotno;
}
