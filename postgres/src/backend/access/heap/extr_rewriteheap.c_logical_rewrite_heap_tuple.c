
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int TransactionId ;
struct TYPE_17__ {TYPE_10__* t_data; void* t_self; } ;
struct TYPE_16__ {void* new_tid; int new_node; void* old_tid; int old_node; } ;
struct TYPE_15__ {TYPE_2__* rs_new_rel; TYPE_1__* rs_old_rel; int rs_logical_rewrite; int rs_logical_xmin; } ;
struct TYPE_14__ {int rd_node; } ;
struct TYPE_13__ {int rd_node; } ;
struct TYPE_12__ {int t_infomask; } ;
typedef TYPE_3__* RewriteState ;
typedef TYPE_4__ LogicalRewriteMappingData ;
typedef void* ItemPointerData ;
typedef TYPE_5__* HeapTuple ;


 scalar_t__ HEAP_XMAX_IS_LOCKED_ONLY (int ) ;
 int HeapTupleHeaderGetUpdateXid (TYPE_10__*) ;
 int HeapTupleHeaderGetXmin (TYPE_10__*) ;
 int TransactionIdEquals (int ,int ) ;
 scalar_t__ TransactionIdIsNormal (int ) ;
 int TransactionIdPrecedes (int ,int ) ;
 int logical_rewrite_log_mapping (TYPE_3__*,int ,TYPE_4__*) ;

__attribute__((used)) static void
logical_rewrite_heap_tuple(RewriteState state, ItemPointerData old_tid,
         HeapTuple new_tuple)
{
 ItemPointerData new_tid = new_tuple->t_self;
 TransactionId cutoff = state->rs_logical_xmin;
 TransactionId xmin;
 TransactionId xmax;
 bool do_log_xmin = 0;
 bool do_log_xmax = 0;
 LogicalRewriteMappingData map;


 if (!state->rs_logical_rewrite)
  return;

 xmin = HeapTupleHeaderGetXmin(new_tuple->t_data);

 xmax = HeapTupleHeaderGetUpdateXid(new_tuple->t_data);




 if (TransactionIdIsNormal(xmin) && !TransactionIdPrecedes(xmin, cutoff))
  do_log_xmin = 1;

 if (!TransactionIdIsNormal(xmax))
 {




 }
 else if (HEAP_XMAX_IS_LOCKED_ONLY(new_tuple->t_data->t_infomask))
 {

 }
 else if (!TransactionIdPrecedes(xmax, cutoff))
 {

  do_log_xmax = 1;
 }


 if (!do_log_xmin && !do_log_xmax)
  return;


 map.old_node = state->rs_old_rel->rd_node;
 map.old_tid = old_tid;
 map.new_node = state->rs_new_rel->rd_node;
 map.new_tid = new_tid;
 if (do_log_xmin)
  logical_rewrite_log_mapping(state, xmin, &map);

 if (do_log_xmax && !TransactionIdEquals(xmin, xmax))
  logical_rewrite_log_mapping(state, xmax, &map);
}
