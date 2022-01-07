
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int ForkNumber ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 scalar_t__ BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 int BufferGetPageSize (int ) ;
 int ERROR ;
 int HASH_WRITE ;
 int LockBuffer (int ,int ) ;
 scalar_t__ P_NEW ;
 int RBM_NORMAL ;
 int RBM_ZERO_AND_LOCK ;
 int ReadBufferExtended (int ,int ,scalar_t__,int ,int *) ;
 scalar_t__ RelationGetNumberOfBlocksInFork (int ,int ) ;
 int RelationGetRelationName (int ) ;
 int _hash_pageinit (int ,int ) ;
 int elog (int ,char*,...) ;

Buffer
_hash_getnewbuf(Relation rel, BlockNumber blkno, ForkNumber forkNum)
{
 BlockNumber nblocks = RelationGetNumberOfBlocksInFork(rel, forkNum);
 Buffer buf;

 if (blkno == P_NEW)
  elog(ERROR, "hash AM does not use P_NEW");
 if (blkno > nblocks)
  elog(ERROR, "access to noncontiguous page in hash index \"%s\"",
    RelationGetRelationName(rel));


 if (blkno == nblocks)
 {
  buf = ReadBufferExtended(rel, forkNum, P_NEW, RBM_NORMAL, ((void*)0));
  if (BufferGetBlockNumber(buf) != blkno)
   elog(ERROR, "unexpected hash relation size: %u, should be %u",
     BufferGetBlockNumber(buf), blkno);
  LockBuffer(buf, HASH_WRITE);
 }
 else
 {
  buf = ReadBufferExtended(rel, forkNum, blkno, RBM_ZERO_AND_LOCK,
         ((void*)0));
 }




 _hash_pageinit(BufferGetPage(buf), BufferGetPageSize(buf));

 return buf;
}
