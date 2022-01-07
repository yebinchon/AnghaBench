
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int index; int heap; int sortstate; } ;
struct TYPE_8__ {int btws_use_wal; int * btws_zeropage; scalar_t__ btws_pages_written; scalar_t__ btws_pages_alloced; int index; int inskey; int heap; } ;
typedef TYPE_1__ BTWriteState ;
typedef TYPE_2__ BTSpool ;


 scalar_t__ BTREE_METAPAGE ;
 int PROGRESS_BTREE_PHASE_LEAF_LOAD ;
 int PROGRESS_BTREE_PHASE_PERFORMSORT_1 ;
 int PROGRESS_BTREE_PHASE_PERFORMSORT_2 ;
 int PROGRESS_CREATEIDX_SUBPHASE ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int ResetUsage () ;
 int ShowUsage (char*) ;
 scalar_t__ XLogIsNeeded () ;
 int _bt_load (TYPE_1__*,TYPE_2__*,TYPE_2__*) ;
 int _bt_mkscankey (int ,int *) ;
 scalar_t__ log_btree_build_stats ;
 int pgstat_progress_update_param (int ,int ) ;
 int tuplesort_performsort (int ) ;

__attribute__((used)) static void
_bt_leafbuild(BTSpool *btspool, BTSpool *btspool2)
{
 BTWriteState wstate;
 pgstat_progress_update_param(PROGRESS_CREATEIDX_SUBPHASE,
         PROGRESS_BTREE_PHASE_PERFORMSORT_1);
 tuplesort_performsort(btspool->sortstate);
 if (btspool2)
 {
  pgstat_progress_update_param(PROGRESS_CREATEIDX_SUBPHASE,
          PROGRESS_BTREE_PHASE_PERFORMSORT_2);
  tuplesort_performsort(btspool2->sortstate);
 }

 wstate.heap = btspool->heap;
 wstate.index = btspool->index;
 wstate.inskey = _bt_mkscankey(wstate.index, ((void*)0));





 wstate.btws_use_wal = XLogIsNeeded() && RelationNeedsWAL(wstate.index);


 wstate.btws_pages_alloced = BTREE_METAPAGE + 1;
 wstate.btws_pages_written = 0;
 wstate.btws_zeropage = ((void*)0);

 pgstat_progress_update_param(PROGRESS_CREATEIDX_SUBPHASE,
         PROGRESS_BTREE_PHASE_LEAF_LOAD);
 _bt_load(&wstate, btspool, btspool2);
}
