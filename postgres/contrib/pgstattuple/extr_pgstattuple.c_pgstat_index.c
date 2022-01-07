
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_5__ {int table_len; int member_0; } ;
typedef TYPE_1__ pgstattuple_type ;
typedef int (* pgstat_page ) (TYPE_1__*,int ,scalar_t__,int ) ;
typedef int Relation ;
typedef int FunctionCallInfo ;
typedef int Datum ;
typedef int BufferAccessStrategy ;
typedef scalar_t__ BlockNumber ;


 int AccessShareLock ;
 int BAS_BULKREAD ;
 int BLCKSZ ;
 int CHECK_FOR_INTERRUPTS () ;
 int ExclusiveLock ;
 int GetAccessStrategy (int ) ;
 int LockRelationForExtension (int ,int ) ;
 scalar_t__ RelationGetNumberOfBlocks (int ) ;
 int UnlockRelationForExtension (int ,int ) ;
 int build_pgstattuple_type (TYPE_1__*,int ) ;
 int relation_close (int ,int ) ;

__attribute__((used)) static Datum
pgstat_index(Relation rel, BlockNumber start, pgstat_page pagefn,
    FunctionCallInfo fcinfo)
{
 BlockNumber nblocks;
 BlockNumber blkno;
 BufferAccessStrategy bstrategy;
 pgstattuple_type stat = {0};


 bstrategy = GetAccessStrategy(BAS_BULKREAD);

 blkno = start;
 for (;;)
 {

  LockRelationForExtension(rel, ExclusiveLock);
  nblocks = RelationGetNumberOfBlocks(rel);
  UnlockRelationForExtension(rel, ExclusiveLock);


  if (blkno >= nblocks)
  {
   stat.table_len = (uint64) nblocks * BLCKSZ;

   break;
  }

  for (; blkno < nblocks; blkno++)
  {
   CHECK_FOR_INTERRUPTS();

   pagefn(&stat, rel, blkno, bstrategy);
  }
 }

 relation_close(rel, AccessShareLock);

 return build_pgstattuple_type(&stat, fcinfo);
}
