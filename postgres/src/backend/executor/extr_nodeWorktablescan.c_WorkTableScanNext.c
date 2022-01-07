
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* state; } ;
struct TYPE_10__ {int * ss_ScanTupleSlot; TYPE_2__ ps; } ;
struct TYPE_11__ {TYPE_4__ ss; TYPE_3__* rustate; } ;
typedef TYPE_5__ WorkTableScanState ;
typedef int Tuplestorestate ;
typedef int TupleTableSlot ;
struct TYPE_9__ {int * working_table; } ;
struct TYPE_7__ {int es_direction; } ;


 int Assert (int ) ;
 int ScanDirectionIsForward (int ) ;
 int tuplestore_gettupleslot (int *,int,int,int *) ;

__attribute__((used)) static TupleTableSlot *
WorkTableScanNext(WorkTableScanState *node)
{
 TupleTableSlot *slot;
 Tuplestorestate *tuplestorestate;
 Assert(ScanDirectionIsForward(node->ss.ps.state->es_direction));

 tuplestorestate = node->rustate->working_table;




 slot = node->ss.ss_ScanTupleSlot;
 (void) tuplestore_gettupleslot(tuplestorestate, 1, 0, slot);
 return slot;
}
