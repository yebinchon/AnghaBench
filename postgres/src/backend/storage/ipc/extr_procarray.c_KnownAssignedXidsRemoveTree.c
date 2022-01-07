
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TransactionId ;


 int KnownAssignedXidsCompress (int) ;
 int KnownAssignedXidsRemove (int ) ;
 scalar_t__ TransactionIdIsValid (int ) ;

__attribute__((used)) static void
KnownAssignedXidsRemoveTree(TransactionId xid, int nsubxids,
       TransactionId *subxids)
{
 int i;

 if (TransactionIdIsValid(xid))
  KnownAssignedXidsRemove(xid);

 for (i = 0; i < nsubxids; i++)
  KnownAssignedXidsRemove(subxids[i]);


 KnownAssignedXidsCompress(0);
}
