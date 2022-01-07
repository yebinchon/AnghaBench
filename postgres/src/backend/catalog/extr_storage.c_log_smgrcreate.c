
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xlrec ;
struct TYPE_2__ {int forkNum; int rnode; } ;
typedef TYPE_1__ xl_smgr_create ;
typedef int RelFileNode ;
typedef int ForkNumber ;


 int RM_SMGR_ID ;
 int XLOG_SMGR_CREATE ;
 int XLR_SPECIAL_REL_UPDATE ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int) ;
 int XLogRegisterData (char*,int) ;

void
log_smgrcreate(const RelFileNode *rnode, ForkNumber forkNum)
{
 xl_smgr_create xlrec;




 xlrec.rnode = *rnode;
 xlrec.forkNum = forkNum;

 XLogBeginInsert();
 XLogRegisterData((char *) &xlrec, sizeof(xlrec));
 XLogInsert(RM_SMGR_ID, XLOG_SMGR_CREATE | XLR_SPECIAL_REL_UPDATE);
}
