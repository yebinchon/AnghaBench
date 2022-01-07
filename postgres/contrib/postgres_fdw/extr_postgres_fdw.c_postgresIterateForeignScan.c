
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_7__ {int * ss_ScanTupleSlot; } ;
struct TYPE_9__ {TYPE_1__ ss; scalar_t__ fdw_state; } ;
struct TYPE_8__ {scalar_t__ next_tuple; scalar_t__ num_tuples; int * tuples; int eof_reached; int cursor_exists; } ;
typedef TYPE_2__ PgFdwScanState ;
typedef TYPE_3__ ForeignScanState ;


 int * ExecClearTuple (int *) ;
 int ExecStoreHeapTuple (int ,int *,int) ;
 int create_cursor (TYPE_3__*) ;
 int fetch_more_data (TYPE_3__*) ;

__attribute__((used)) static TupleTableSlot *
postgresIterateForeignScan(ForeignScanState *node)
{
 PgFdwScanState *fsstate = (PgFdwScanState *) node->fdw_state;
 TupleTableSlot *slot = node->ss.ss_ScanTupleSlot;





 if (!fsstate->cursor_exists)
  create_cursor(node);




 if (fsstate->next_tuple >= fsstate->num_tuples)
 {

  if (!fsstate->eof_reached)
   fetch_more_data(node);

  if (fsstate->next_tuple >= fsstate->num_tuples)
   return ExecClearTuple(slot);
 }




 ExecStoreHeapTuple(fsstate->tuples[fsstate->next_tuple++],
        slot,
        0);

 return slot;
}
