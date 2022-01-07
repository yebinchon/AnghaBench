
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TupleTableSlotOps ;
typedef int * TupleDesc ;
struct TYPE_8__ {int es_tupleTable; } ;
struct TYPE_6__ {int scanopsset; int const* scanops; int scanopsfixed; int * scandesc; } ;
struct TYPE_7__ {TYPE_1__ ps; int ss_ScanTupleSlot; } ;
typedef TYPE_2__ ScanState ;
typedef TYPE_3__ EState ;


 int ExecAllocTableSlot (int *,int *,int const*) ;

void
ExecInitScanTupleSlot(EState *estate, ScanState *scanstate,
       TupleDesc tupledesc, const TupleTableSlotOps *tts_ops)
{
 scanstate->ss_ScanTupleSlot = ExecAllocTableSlot(&estate->es_tupleTable,
              tupledesc, tts_ops);
 scanstate->ps.scandesc = tupledesc;
 scanstate->ps.scanopsfixed = tupledesc != ((void*)0);
 scanstate->ps.scanops = tts_ops;
 scanstate->ps.scanopsset = 1;
}
