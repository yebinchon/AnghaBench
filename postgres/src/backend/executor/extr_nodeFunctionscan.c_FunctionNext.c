
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int int64 ;
typedef int Tuplestorestate ;
struct TYPE_16__ {int* tts_isnull; scalar_t__* tts_values; } ;
typedef TYPE_3__ TupleTableSlot ;
struct TYPE_19__ {int es_direction; } ;
struct TYPE_18__ {int rowcount; int colcount; TYPE_3__* func_slot; int * tstore; int tupdesc; int setexpr; } ;
struct TYPE_14__ {int ps_ExprContext; TYPE_6__* state; } ;
struct TYPE_15__ {TYPE_1__ ps; TYPE_3__* ss_ScanTupleSlot; } ;
struct TYPE_17__ {int eflags; int ordinal; int nfuncs; scalar_t__ ordinality; int argcontext; TYPE_2__ ss; TYPE_5__* funcstates; scalar_t__ simple; } ;
typedef int ScanDirection ;
typedef TYPE_4__ FunctionScanState ;
typedef TYPE_5__ FunctionScanPerFuncState ;
typedef TYPE_6__ EState ;
typedef scalar_t__ Datum ;


 int EXEC_FLAG_BACKWARD ;
 int ExecClearTuple (TYPE_3__*) ;
 void* ExecMakeTableFunctionResult (int ,int ,int ,int ,int) ;
 int ExecStoreVirtualTuple (TYPE_3__*) ;
 scalar_t__ Int64GetDatumFast (int) ;
 scalar_t__ ScanDirectionIsForward (int ) ;
 scalar_t__ TupIsNull (TYPE_3__*) ;
 int slot_getallattrs (TYPE_3__*) ;
 int tuplestore_gettupleslot (int *,scalar_t__,int,TYPE_3__*) ;
 int tuplestore_rescan (int *) ;

__attribute__((used)) static TupleTableSlot *
FunctionNext(FunctionScanState *node)
{
 EState *estate;
 ScanDirection direction;
 TupleTableSlot *scanslot;
 bool alldone;
 int64 oldpos;
 int funcno;
 int att;




 estate = node->ss.ps.state;
 direction = estate->es_direction;
 scanslot = node->ss.ss_ScanTupleSlot;

 if (node->simple)
 {






  Tuplestorestate *tstore = node->funcstates[0].tstore;






  if (tstore == ((void*)0))
  {
   node->funcstates[0].tstore = tstore =
    ExecMakeTableFunctionResult(node->funcstates[0].setexpr,
           node->ss.ps.ps_ExprContext,
           node->argcontext,
           node->funcstates[0].tupdesc,
           node->eflags & EXEC_FLAG_BACKWARD);






   tuplestore_rescan(tstore);
  }




  (void) tuplestore_gettupleslot(tstore,
            ScanDirectionIsForward(direction),
            0,
            scanslot);
  return scanslot;
 }







 oldpos = node->ordinal;
 if (ScanDirectionIsForward(direction))
  node->ordinal++;
 else
  node->ordinal--;
 ExecClearTuple(scanslot);
 att = 0;
 alldone = 1;
 for (funcno = 0; funcno < node->nfuncs; funcno++)
 {
  FunctionScanPerFuncState *fs = &node->funcstates[funcno];
  int i;






  if (fs->tstore == ((void*)0))
  {
   fs->tstore =
    ExecMakeTableFunctionResult(fs->setexpr,
           node->ss.ps.ps_ExprContext,
           node->argcontext,
           fs->tupdesc,
           node->eflags & EXEC_FLAG_BACKWARD);






   tuplestore_rescan(fs->tstore);
  }
  if (fs->rowcount != -1 && fs->rowcount < oldpos)
   ExecClearTuple(fs->func_slot);
  else
   (void) tuplestore_gettupleslot(fs->tstore,
             ScanDirectionIsForward(direction),
             0,
             fs->func_slot);

  if (TupIsNull(fs->func_slot))
  {







   if (ScanDirectionIsForward(direction) && fs->rowcount == -1)
    fs->rowcount = node->ordinal;




   for (i = 0; i < fs->colcount; i++)
   {
    scanslot->tts_values[att] = (Datum) 0;
    scanslot->tts_isnull[att] = 1;
    att++;
   }
  }
  else
  {



   slot_getallattrs(fs->func_slot);

   for (i = 0; i < fs->colcount; i++)
   {
    scanslot->tts_values[att] = fs->func_slot->tts_values[i];
    scanslot->tts_isnull[att] = fs->func_slot->tts_isnull[i];
    att++;
   }





   alldone = 0;
  }
 }




 if (node->ordinality)
 {
  scanslot->tts_values[att] = Int64GetDatumFast(node->ordinal);
  scanslot->tts_isnull[att] = 0;
 }





 if (!alldone)
  ExecStoreVirtualTuple(scanslot);

 return scanslot;
}
