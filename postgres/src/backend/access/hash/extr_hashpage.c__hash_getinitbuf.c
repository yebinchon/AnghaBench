
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int BufferGetPage (int ) ;
 int BufferGetPageSize (int ) ;
 int ERROR ;
 int MAIN_FORKNUM ;
 scalar_t__ P_NEW ;
 int RBM_ZERO_AND_LOCK ;
 int ReadBufferExtended (int ,int ,scalar_t__,int ,int *) ;
 int _hash_pageinit (int ,int ) ;
 int elog (int ,char*) ;

Buffer
_hash_getinitbuf(Relation rel, BlockNumber blkno)
{
 Buffer buf;

 if (blkno == P_NEW)
  elog(ERROR, "hash AM does not use P_NEW");

 buf = ReadBufferExtended(rel, MAIN_FORKNUM, blkno, RBM_ZERO_AND_LOCK,
        ((void*)0));




 _hash_pageinit(BufferGetPage(buf), BufferGetPageSize(buf));

 return buf;
}
