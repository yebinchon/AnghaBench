
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int ConditionalLockBufferForCleanup (int ) ;
 int ERROR ;
 int InvalidBuffer ;
 scalar_t__ P_NEW ;
 int ReadBuffer (int ,scalar_t__) ;
 int ReleaseBuffer (int ) ;
 int _hash_checkpage (int ,int ,int) ;
 int elog (int ,char*) ;

Buffer
_hash_getbuf_with_condlock_cleanup(Relation rel, BlockNumber blkno, int flags)
{
 Buffer buf;

 if (blkno == P_NEW)
  elog(ERROR, "hash AM does not use P_NEW");

 buf = ReadBuffer(rel, blkno);

 if (!ConditionalLockBufferForCleanup(buf))
 {
  ReleaseBuffer(buf);
  return InvalidBuffer;
 }



 _hash_checkpage(rel, buf, flags);

 return buf;
}
