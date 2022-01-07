
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int xs_temp_snap; int parallel_scan; } ;
struct TYPE_11__ {TYPE_1__* rd_indam; } ;
struct TYPE_10__ {TYPE_3__* (* ambeginscan ) (TYPE_2__*,int,int) ;int ampredlocks; } ;
typedef int Snapshot ;
typedef TYPE_2__* Relation ;
typedef int ParallelIndexScanDesc ;
typedef TYPE_3__* IndexScanDesc ;


 int CHECK_REL_PROCEDURE (int ) ;
 int PredicateLockRelation (TYPE_2__*,int ) ;
 int RELATION_CHECKS ;
 int RelationIncrementReferenceCount (TYPE_2__*) ;
 int ambeginscan ;
 TYPE_3__* stub1 (TYPE_2__*,int,int) ;

__attribute__((used)) static IndexScanDesc
index_beginscan_internal(Relation indexRelation,
       int nkeys, int norderbys, Snapshot snapshot,
       ParallelIndexScanDesc pscan, bool temp_snap)
{
 IndexScanDesc scan;

 RELATION_CHECKS;
 CHECK_REL_PROCEDURE(ambeginscan);

 if (!(indexRelation->rd_indam->ampredlocks))
  PredicateLockRelation(indexRelation, snapshot);




 RelationIncrementReferenceCount(indexRelation);




 scan = indexRelation->rd_indam->ambeginscan(indexRelation, nkeys,
            norderbys);

 scan->parallel_scan = pscan;
 scan->xs_temp_snap = temp_snap;

 return scan;
}
