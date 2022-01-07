
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_7__ {int rd_smgr; TYPE_1__* rd_rel; } ;
struct TYPE_6__ {int relkind; } ;
typedef TYPE_2__* Relation ;
typedef int ForkNumber ;
typedef int BlockNumber ;


 int Assert (int) ;
 int BLCKSZ ;
 int RelationOpenSmgr (TYPE_2__*) ;
 int smgrnblocks (int ,int ) ;
 int table_relation_size (TYPE_2__*,int ) ;

BlockNumber
RelationGetNumberOfBlocksInFork(Relation relation, ForkNumber forkNum)
{
 switch (relation->rd_rel->relkind)
 {
  case 130:
  case 135:
  case 133:

   RelationOpenSmgr(relation);

   return smgrnblocks(relation->rd_smgr, forkNum);

  case 131:
  case 129:
  case 134:
   {






    uint64 szbytes;

    szbytes = table_relation_size(relation, forkNum);

    return (szbytes + (BLCKSZ - 1)) / BLCKSZ;
   }
  case 128:
  case 137:
  case 136:
  case 132:
  default:
   Assert(0);
   break;
 }

 return 0;
}
