
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int node; } ;
struct TYPE_6__ {TYPE_1__ smgr_rnode; } ;
typedef TYPE_2__* SMgrRelation ;
typedef int LocalBufferLookupEnt ;
typedef int ForkNumber ;
typedef int BufferTag ;
typedef int BlockNumber ;


 int HASH_FIND ;
 int INIT_BUFFERTAG (int ,int ,int ,int ) ;
 int InitLocalBuffers () ;
 int * LocalBufHash ;
 scalar_t__ hash_search (int *,void*,int ,int *) ;
 int smgrprefetch (TYPE_2__*,int ,int ) ;

void
LocalPrefetchBuffer(SMgrRelation smgr, ForkNumber forkNum,
     BlockNumber blockNum)
{
}
