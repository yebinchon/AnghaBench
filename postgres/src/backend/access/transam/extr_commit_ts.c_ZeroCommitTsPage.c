
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CommitTsCtl ;
 int SimpleLruZeroPage (int ,int) ;
 int WriteZeroPageXlogRec (int) ;

__attribute__((used)) static int
ZeroCommitTsPage(int pageno, bool writeXlog)
{
 int slotno;

 slotno = SimpleLruZeroPage(CommitTsCtl, pageno);

 if (writeXlog)
  WriteZeroPageXlogRec(pageno);

 return slotno;
}
