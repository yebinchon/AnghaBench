
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int isunique; } ;
struct TYPE_12__ {TYPE_1__* spool; TYPE_3__* btleader; } ;
struct TYPE_11__ {int nparticipanttuplesorts; int sharedsort2; int sharedsort; TYPE_7__* btshared; } ;
struct TYPE_10__ {int isunique; int index; int heap; } ;
struct TYPE_9__ {int isunique; int index; int heap; } ;
typedef TYPE_2__ BTSpool ;
typedef TYPE_3__ BTLeader ;
typedef TYPE_4__ BTBuildState ;


 int ResetUsage () ;
 int ShowUsage (char*) ;
 int _bt_parallel_scan_and_sort (TYPE_2__*,TYPE_2__*,TYPE_7__*,int ,int ,int,int) ;
 scalar_t__ log_btree_build_stats ;
 int maintenance_work_mem ;
 scalar_t__ palloc0 (int) ;

__attribute__((used)) static void
_bt_leader_participate_as_worker(BTBuildState *buildstate)
{
 BTLeader *btleader = buildstate->btleader;
 BTSpool *leaderworker;
 BTSpool *leaderworker2;
 int sortmem;


 leaderworker = (BTSpool *) palloc0(sizeof(BTSpool));
 leaderworker->heap = buildstate->spool->heap;
 leaderworker->index = buildstate->spool->index;
 leaderworker->isunique = buildstate->spool->isunique;


 if (!btleader->btshared->isunique)
  leaderworker2 = ((void*)0);
 else
 {

  leaderworker2 = (BTSpool *) palloc0(sizeof(BTSpool));


  leaderworker2->heap = leaderworker->heap;
  leaderworker2->index = leaderworker->index;
  leaderworker2->isunique = 0;
 }






 sortmem = maintenance_work_mem / btleader->nparticipanttuplesorts;


 _bt_parallel_scan_and_sort(leaderworker, leaderworker2, btleader->btshared,
          btleader->sharedsort, btleader->sharedsort2,
          sortmem, 1);
}
