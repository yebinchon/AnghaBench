
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int Tuplestorestate ;
typedef int TupleTableSlot ;
struct TYPE_7__ {TYPE_4__* state; } ;
struct TYPE_8__ {int * ss_ScanTupleSlot; TYPE_1__ ps; } ;
struct TYPE_11__ {int readptr; TYPE_3__* leader; int cteplanstate; TYPE_2__ ss; } ;
struct TYPE_10__ {int es_direction; } ;
struct TYPE_9__ {int eof_cte; int * cte_table; } ;
typedef int ScanDirection ;
typedef TYPE_4__ EState ;
typedef TYPE_5__ CteScanState ;


 int * ExecClearTuple (int *) ;
 int * ExecCopySlot (int *,int *) ;
 int * ExecProcNode (int ) ;
 int ScanDirectionIsForward (int ) ;
 scalar_t__ TupIsNull (int *) ;
 int tuplestore_advance (int *,int) ;
 int tuplestore_ateof (int *) ;
 scalar_t__ tuplestore_gettupleslot (int *,int,int,int *) ;
 int tuplestore_puttupleslot (int *,int *) ;
 int tuplestore_select_read_pointer (int *,int ) ;

__attribute__((used)) static TupleTableSlot *
CteScanNext(CteScanState *node)
{
 EState *estate;
 ScanDirection dir;
 bool forward;
 Tuplestorestate *tuplestorestate;
 bool eof_tuplestore;
 TupleTableSlot *slot;




 estate = node->ss.ps.state;
 dir = estate->es_direction;
 forward = ScanDirectionIsForward(dir);
 tuplestorestate = node->leader->cte_table;
 tuplestore_select_read_pointer(tuplestorestate, node->readptr);
 slot = node->ss.ss_ScanTupleSlot;





 eof_tuplestore = tuplestore_ateof(tuplestorestate);

 if (!forward && eof_tuplestore)
 {
  if (!node->leader->eof_cte)
  {






   if (!tuplestore_advance(tuplestorestate, forward))
    return ((void*)0);
  }
  eof_tuplestore = 0;
 }
 if (!eof_tuplestore)
 {
  if (tuplestore_gettupleslot(tuplestorestate, forward, 1, slot))
   return slot;
  if (forward)
   eof_tuplestore = 1;
 }
 if (eof_tuplestore && !node->leader->eof_cte)
 {
  TupleTableSlot *cteslot;





  cteslot = ExecProcNode(node->cteplanstate);
  if (TupIsNull(cteslot))
  {
   node->leader->eof_cte = 1;
   return ((void*)0);
  }






  tuplestore_select_read_pointer(tuplestorestate, node->readptr);
  tuplestore_puttupleslot(tuplestorestate, cteslot);







  return ExecCopySlot(slot, cteslot);
 }




 return ExecClearTuple(slot);
}
