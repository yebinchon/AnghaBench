
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MultiXactMemberCtl ;
 int SimpleLruZeroPage (int ,int) ;
 int WriteMZeroPageXlogRec (int,int ) ;
 int XLOG_MULTIXACT_ZERO_MEM_PAGE ;

__attribute__((used)) static int
ZeroMultiXactMemberPage(int pageno, bool writeXlog)
{
 int slotno;

 slotno = SimpleLruZeroPage(MultiXactMemberCtl, pageno);

 if (writeXlog)
  WriteMZeroPageXlogRec(pageno, XLOG_MULTIXACT_ZERO_MEM_PAGE);

 return slotno;
}
