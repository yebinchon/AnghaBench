
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SMgrRelation ;
typedef int RelFileNode ;
typedef int ReadBufferMode ;
typedef int ForkNumber ;
typedef int BufferAccessStrategy ;
typedef int Buffer ;
typedef int BlockNumber ;


 int Assert (int ) ;
 int InRecovery ;
 int InvalidBackendId ;
 int RELPERSISTENCE_PERMANENT ;
 int ReadBuffer_common (int ,int ,int ,int ,int ,int ,int*) ;
 int smgropen (int ,int ) ;

Buffer
ReadBufferWithoutRelcache(RelFileNode rnode, ForkNumber forkNum,
        BlockNumber blockNum, ReadBufferMode mode,
        BufferAccessStrategy strategy)
{
 bool hit;

 SMgrRelation smgr = smgropen(rnode, InvalidBackendId);

 Assert(InRecovery);

 return ReadBuffer_common(smgr, RELPERSISTENCE_PERMANENT, forkNum, blockNum,
        mode, strategy, &hit);
}
