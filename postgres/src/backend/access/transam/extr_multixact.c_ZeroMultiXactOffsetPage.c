
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MultiXactOffsetCtl ;
 int SimpleLruZeroPage (int ,int) ;
 int WriteMZeroPageXlogRec (int,int ) ;
 int XLOG_MULTIXACT_ZERO_OFF_PAGE ;

__attribute__((used)) static int
ZeroMultiXactOffsetPage(int pageno, bool writeXlog)
{
 int slotno;

 slotno = SimpleLruZeroPage(MultiXactOffsetCtl, pageno);

 if (writeXlog)
  WriteMZeroPageXlogRec(pageno, XLOG_MULTIXACT_ZERO_OFF_PAGE);

 return slotno;
}
