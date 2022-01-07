
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int float8 ;
struct TYPE_11__ {scalar_t__ rd_options; } ;
struct TYPE_10__ {scalar_t__ btm_version; int btm_last_cleanup_num_heap_tuples; int btm_oldest_btpo_xact; } ;
struct TYPE_9__ {int num_heap_tuples; TYPE_5__* index; } ;
struct TYPE_8__ {scalar_t__ vacuum_cleanup_index_scale_factor; } ;
typedef TYPE_1__ StdRdOptions ;
typedef int Page ;
typedef TYPE_2__ IndexVacuumInfo ;
typedef int Buffer ;
typedef TYPE_3__ BTMetaPageData ;


 TYPE_3__* BTPageGetMeta (int ) ;
 int BTREE_METAPAGE ;
 scalar_t__ BTREE_NOVAC_VERSION ;
 int BT_READ ;
 int BufferGetPage (int ) ;
 int RecentGlobalXmin ;
 scalar_t__ TransactionIdIsValid (int ) ;
 scalar_t__ TransactionIdPrecedes (int ,int ) ;
 int _bt_getbuf (TYPE_5__*,int ,int ) ;
 int _bt_relbuf (TYPE_5__*,int ) ;
 int vacuum_cleanup_index_scale_factor ;

__attribute__((used)) static bool
_bt_vacuum_needs_cleanup(IndexVacuumInfo *info)
{
 Buffer metabuf;
 Page metapg;
 BTMetaPageData *metad;
 bool result = 0;

 metabuf = _bt_getbuf(info->index, BTREE_METAPAGE, BT_READ);
 metapg = BufferGetPage(metabuf);
 metad = BTPageGetMeta(metapg);

 if (metad->btm_version < BTREE_NOVAC_VERSION)
 {




  result = 1;
 }
 else if (TransactionIdIsValid(metad->btm_oldest_btpo_xact) &&
    TransactionIdPrecedes(metad->btm_oldest_btpo_xact,
           RecentGlobalXmin))
 {




  result = 1;
 }
 else
 {
  StdRdOptions *relopts;
  float8 cleanup_scale_factor;
  float8 prev_num_heap_tuples;
  relopts = (StdRdOptions *) info->index->rd_options;
  cleanup_scale_factor = (relopts &&
        relopts->vacuum_cleanup_index_scale_factor >= 0)
   ? relopts->vacuum_cleanup_index_scale_factor
   : vacuum_cleanup_index_scale_factor;
  prev_num_heap_tuples = metad->btm_last_cleanup_num_heap_tuples;

  if (cleanup_scale_factor <= 0 ||
   prev_num_heap_tuples <= 0 ||
   (info->num_heap_tuples - prev_num_heap_tuples) /
   prev_num_heap_tuples >= cleanup_scale_factor)
   result = 1;
 }

 _bt_relbuf(info->index, metabuf);
 return result;
}
