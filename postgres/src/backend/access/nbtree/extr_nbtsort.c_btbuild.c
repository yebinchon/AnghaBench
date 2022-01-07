
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int havedead; scalar_t__ indtuples; int * btleader; int * spool2; int * spool; int heap; int isunique; } ;
struct TYPE_9__ {double heap_tuples; scalar_t__ index_tuples; } ;
struct TYPE_8__ {int ii_Unique; } ;
typedef int Relation ;
typedef TYPE_1__ IndexInfo ;
typedef TYPE_2__ IndexBuildResult ;
typedef TYPE_3__ BTBuildState ;


 int ERROR ;
 scalar_t__ RelationGetNumberOfBlocks (int ) ;
 int RelationGetRelationName (int ) ;
 int ResetUsage () ;
 int ShowUsage (char*) ;
 int _bt_end_parallel (int *) ;
 int _bt_leafbuild (int *,int *) ;
 int _bt_spooldestroy (int *) ;
 double _bt_spools_heapscan (int ,int ,TYPE_3__*,TYPE_1__*) ;
 int elog (int ,char*,int ) ;
 scalar_t__ log_btree_build_stats ;
 scalar_t__ palloc (int) ;

IndexBuildResult *
btbuild(Relation heap, Relation index, IndexInfo *indexInfo)
{
 IndexBuildResult *result;
 BTBuildState buildstate;
 double reltuples;






 buildstate.isunique = indexInfo->ii_Unique;
 buildstate.havedead = 0;
 buildstate.heap = heap;
 buildstate.spool = ((void*)0);
 buildstate.spool2 = ((void*)0);
 buildstate.indtuples = 0;
 buildstate.btleader = ((void*)0);





 if (RelationGetNumberOfBlocks(index) != 0)
  elog(ERROR, "index \"%s\" already contains data",
    RelationGetRelationName(index));

 reltuples = _bt_spools_heapscan(heap, index, &buildstate, indexInfo);






 _bt_leafbuild(buildstate.spool, buildstate.spool2);
 _bt_spooldestroy(buildstate.spool);
 if (buildstate.spool2)
  _bt_spooldestroy(buildstate.spool2);
 if (buildstate.btleader)
  _bt_end_parallel(buildstate.btleader);

 result = (IndexBuildResult *) palloc(sizeof(IndexBuildResult));

 result->heap_tuples = reltuples;
 result->index_tuples = buildstate.indtuples;
 return result;
}
