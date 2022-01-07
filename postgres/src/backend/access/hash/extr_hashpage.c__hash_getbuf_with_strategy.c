
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int BufferAccessStrategy ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int ERROR ;
 int HASH_NOLOCK ;
 int LockBuffer (int ,int) ;
 int MAIN_FORKNUM ;
 scalar_t__ P_NEW ;
 int RBM_NORMAL ;
 int ReadBufferExtended (int ,int ,scalar_t__,int ,int ) ;
 int _hash_checkpage (int ,int ,int) ;
 int elog (int ,char*) ;

Buffer
_hash_getbuf_with_strategy(Relation rel, BlockNumber blkno,
         int access, int flags,
         BufferAccessStrategy bstrategy)
{
 Buffer buf;

 if (blkno == P_NEW)
  elog(ERROR, "hash AM does not use P_NEW");

 buf = ReadBufferExtended(rel, MAIN_FORKNUM, blkno, RBM_NORMAL, bstrategy);

 if (access != HASH_NOLOCK)
  LockBuffer(buf, access);



 _hash_checkpage(rel, buf, flags);

 return buf;
}
