
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_4__ {int num_heap_tuples; int index; } ;
typedef int Relation ;
typedef TYPE_1__ IndexVacuumInfo ;
typedef int IndexBulkDeleteResult ;
typedef int IndexBulkDeleteCallback ;
typedef int BTCycleId ;


 int PG_END_ENSURE_ERROR_CLEANUP (int ,int ) ;
 int PG_ENSURE_ERROR_CLEANUP (int ,int ) ;
 int PointerGetDatum (int ) ;
 int _bt_end_vacuum (int ) ;
 int _bt_end_vacuum_callback ;
 int _bt_start_vacuum (int ) ;
 int _bt_update_meta_cleanup_info (int ,int ,int ) ;
 int btvacuumscan (TYPE_1__*,int *,int ,void*,int ,int *) ;
 scalar_t__ palloc0 (int) ;

IndexBulkDeleteResult *
btbulkdelete(IndexVacuumInfo *info, IndexBulkDeleteResult *stats,
    IndexBulkDeleteCallback callback, void *callback_state)
{
 Relation rel = info->index;
 BTCycleId cycleid;


 if (stats == ((void*)0))
  stats = (IndexBulkDeleteResult *) palloc0(sizeof(IndexBulkDeleteResult));



 PG_ENSURE_ERROR_CLEANUP(_bt_end_vacuum_callback, PointerGetDatum(rel));
 {
  TransactionId oldestBtpoXact;

  cycleid = _bt_start_vacuum(rel);

  btvacuumscan(info, stats, callback, callback_state, cycleid,
      &oldestBtpoXact);






  _bt_update_meta_cleanup_info(info->index, oldestBtpoXact,
          info->num_heap_tuples);
 }
 PG_END_ENSURE_ERROR_CLEANUP(_bt_end_vacuum_callback, PointerGetDatum(rel));
 _bt_end_vacuum(rel);

 return stats;
}
