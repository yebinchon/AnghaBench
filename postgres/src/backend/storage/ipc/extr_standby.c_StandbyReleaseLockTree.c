
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TransactionId ;


 int StandbyReleaseLocks (int ) ;

void
StandbyReleaseLockTree(TransactionId xid, int nsubxids, TransactionId *subxids)
{
 int i;

 StandbyReleaseLocks(xid);

 for (i = 0; i < nsubxids; i++)
  StandbyReleaseLocks(subxids[i]);
}
