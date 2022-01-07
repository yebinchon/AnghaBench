
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_9__ {int hasho_bucket; int hasho_page_id; int hasho_flag; scalar_t__ hasho_nextblkno; scalar_t__ hasho_prevblkno; } ;
struct TYPE_8__ {scalar_t__ data; } ;
struct TYPE_7__ {int rd_smgr; int rd_node; } ;
typedef TYPE_1__* Relation ;
typedef scalar_t__ Page ;
typedef TYPE_2__ PGAlignedBlock ;
typedef TYPE_3__* HashPageOpaque ;
typedef scalar_t__ BlockNumber ;


 int BLCKSZ ;
 int HASHO_PAGE_ID ;
 scalar_t__ InvalidBlockNumber ;
 int LH_UNUSED_PAGE ;
 int MAIN_FORKNUM ;
 scalar_t__ PageGetSpecialPointer (scalar_t__) ;
 int PageSetChecksumInplace (scalar_t__,scalar_t__) ;
 scalar_t__ RelationNeedsWAL (TYPE_1__*) ;
 int RelationOpenSmgr (TYPE_1__*) ;
 int _hash_pageinit (scalar_t__,int ) ;
 int log_newpage (int *,int ,scalar_t__,scalar_t__,int) ;
 int smgrextend (int ,int ,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static bool
_hash_alloc_buckets(Relation rel, BlockNumber firstblock, uint32 nblocks)
{
 BlockNumber lastblock;
 PGAlignedBlock zerobuf;
 Page page;
 HashPageOpaque ovflopaque;

 lastblock = firstblock + nblocks - 1;





 if (lastblock < firstblock || lastblock == InvalidBlockNumber)
  return 0;

 page = (Page) zerobuf.data;






 _hash_pageinit(page, BLCKSZ);

 ovflopaque = (HashPageOpaque) PageGetSpecialPointer(page);

 ovflopaque->hasho_prevblkno = InvalidBlockNumber;
 ovflopaque->hasho_nextblkno = InvalidBlockNumber;
 ovflopaque->hasho_bucket = -1;
 ovflopaque->hasho_flag = LH_UNUSED_PAGE;
 ovflopaque->hasho_page_id = HASHO_PAGE_ID;

 if (RelationNeedsWAL(rel))
  log_newpage(&rel->rd_node,
     MAIN_FORKNUM,
     lastblock,
     zerobuf.data,
     1);

 RelationOpenSmgr(rel);
 PageSetChecksumInplace(page, lastblock);
 smgrextend(rel->rd_smgr, MAIN_FORKNUM, lastblock, zerobuf.data, 0);

 return 1;
}
