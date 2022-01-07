
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_4__ {int rd_smgr; } ;
typedef TYPE_1__* Relation ;
typedef int ForkNumber ;


 int BLCKSZ ;
 int InvalidForkNumber ;
 int MAX_FORKNUM ;
 int RelationOpenSmgr (TYPE_1__*) ;
 int smgrnblocks (int ,int) ;

uint64
table_block_relation_size(Relation rel, ForkNumber forkNumber)
{
 uint64 nblocks = 0;


 RelationOpenSmgr(rel);


 if (forkNumber == InvalidForkNumber)
 {
  for (int i = 0; i < MAX_FORKNUM; i++)
   nblocks += smgrnblocks(rel->rd_smgr, i);
 }
 else
  nblocks = smgrnblocks(rel->rd_smgr, forkNumber);

 return nblocks * BLCKSZ;
}
