
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_10__ {int node; } ;
struct TYPE_12__ {TYPE_1__ smgr_rnode; } ;
struct TYPE_11__ {TYPE_3__* rd_smgr; } ;
typedef TYPE_2__* Relation ;
typedef int LWLock ;
typedef int ForkNumber ;
typedef int BufferTag ;
typedef int BlockNumber ;


 int Assert (int ) ;
 int BlockNumberIsValid (int ) ;
 int * BufMappingPartitionLock (int ) ;
 int BufTableHashCode (int *) ;
 int BufTableLookup (int *,int ) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int INIT_BUFFERTAG (int ,int ,int ,int ) ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_SHARED ;
 int LocalPrefetchBuffer (TYPE_3__*,int ,int ) ;
 scalar_t__ RELATION_IS_OTHER_TEMP (TYPE_2__*) ;
 int RelationIsValid (TYPE_2__*) ;
 int RelationOpenSmgr (TYPE_2__*) ;
 scalar_t__ RelationUsesLocalBuffers (TYPE_2__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int smgrprefetch (TYPE_3__*,int ,int ) ;

void
PrefetchBuffer(Relation reln, ForkNumber forkNum, BlockNumber blockNum)
{
}
