
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dbNode; } ;
struct TYPE_6__ {int rd_id; TYPE_1__ rd_node; } ;
typedef int Snapshot ;
typedef TYPE_2__* Relation ;
typedef int PREDICATELOCKTARGETTAG ;
typedef int BlockNumber ;


 int PredicateLockAcquire (int *) ;
 int SET_PREDICATELOCKTARGETTAG_PAGE (int ,int ,int ,int ) ;
 int SerializationNeededForRead (TYPE_2__*,int ) ;

void
PredicateLockPage(Relation relation, BlockNumber blkno, Snapshot snapshot)
{
 PREDICATELOCKTARGETTAG tag;

 if (!SerializationNeededForRead(relation, snapshot))
  return;

 SET_PREDICATELOCKTARGETTAG_PAGE(tag,
         relation->rd_node.dbNode,
         relation->rd_id,
         blkno);
 PredicateLockAcquire(&tag);
}
