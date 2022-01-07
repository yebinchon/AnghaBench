
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_20__ {scalar_t__ indtuples; int * spool; TYPE_2__* heapRel; } ;
struct TYPE_19__ {double heap_tuples; scalar_t__ index_tuples; } ;
struct TYPE_18__ {TYPE_1__* rd_rel; } ;
struct TYPE_17__ {scalar_t__ relpersistence; } ;
typedef TYPE_2__* Relation ;
typedef int IndexInfo ;
typedef TYPE_3__ IndexBuildResult ;
typedef TYPE_4__ HashBuildState ;
typedef int BlockNumber ;


 long BLCKSZ ;
 int ERROR ;
 int MAIN_FORKNUM ;
 long Min (long,int ) ;
 int NBuffers ;
 int NLocBuffer ;
 int PROGRESS_CREATEIDX_TUPLES_TOTAL ;
 scalar_t__ RELPERSISTENCE_TEMP ;
 scalar_t__ RelationGetNumberOfBlocks (TYPE_2__*) ;
 int RelationGetRelationName (TYPE_2__*) ;
 int _h_indexbuild (int *,TYPE_2__*) ;
 int _h_spooldestroy (int *) ;
 int * _h_spoolinit (TYPE_2__*,TYPE_2__*,scalar_t__) ;
 scalar_t__ _hash_init (TYPE_2__*,double,int ) ;
 int elog (int ,char*,int ) ;
 int estimate_rel_size (TYPE_2__*,int *,int *,double*,double*) ;
 int hashbuildCallback ;
 long maintenance_work_mem ;
 scalar_t__ palloc (int) ;
 int pgstat_progress_update_param (int ,scalar_t__) ;
 double table_index_build_scan (TYPE_2__*,TYPE_2__*,int *,int,int,int ,void*,int *) ;

IndexBuildResult *
hashbuild(Relation heap, Relation index, IndexInfo *indexInfo)
{
 IndexBuildResult *result;
 BlockNumber relpages;
 double reltuples;
 double allvisfrac;
 uint32 num_buckets;
 long sort_threshold;
 HashBuildState buildstate;





 if (RelationGetNumberOfBlocks(index) != 0)
  elog(ERROR, "index \"%s\" already contains data",
    RelationGetRelationName(index));


 estimate_rel_size(heap, ((void*)0), &relpages, &reltuples, &allvisfrac);


 num_buckets = _hash_init(index, reltuples, MAIN_FORKNUM);
 sort_threshold = (maintenance_work_mem * 1024L) / BLCKSZ;
 if (index->rd_rel->relpersistence != RELPERSISTENCE_TEMP)
  sort_threshold = Min(sort_threshold, NBuffers);
 else
  sort_threshold = Min(sort_threshold, NLocBuffer);

 if (num_buckets >= (uint32) sort_threshold)
  buildstate.spool = _h_spoolinit(heap, index, num_buckets);
 else
  buildstate.spool = ((void*)0);


 buildstate.indtuples = 0;
 buildstate.heapRel = heap;


 reltuples = table_index_build_scan(heap, index, indexInfo, 1, 1,
            hashbuildCallback,
            (void *) &buildstate, ((void*)0));
 pgstat_progress_update_param(PROGRESS_CREATEIDX_TUPLES_TOTAL,
         buildstate.indtuples);

 if (buildstate.spool)
 {

  _h_indexbuild(buildstate.spool, buildstate.heapRel);
  _h_spooldestroy(buildstate.spool);
 }




 result = (IndexBuildResult *) palloc(sizeof(IndexBuildResult));

 result->heap_tuples = reltuples;
 result->index_tuples = buildstate.indtuples;

 return result;
}
