
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int64 ;
typedef TYPE_4__* WindowObject ;
struct TYPE_9__ {TYPE_1__* ps_ExprContext; } ;
struct TYPE_10__ {TYPE_2__ ps; } ;
struct TYPE_12__ {int spooled_rows; int buffer; TYPE_3__ ss; } ;
typedef TYPE_5__ WindowAggState ;
typedef int TupleTableSlot ;
struct TYPE_11__ {int markpos; int seekpos; int readptr; TYPE_5__* winstate; } ;
struct TYPE_8__ {int ecxt_per_query_memory; } ;
typedef int MemoryContext ;


 int Assert (int) ;
 int CHECK_FOR_INTERRUPTS () ;
 int ERROR ;
 int MemoryContextSwitchTo (int ) ;
 int elog (int ,char*) ;
 int spool_tuples (TYPE_5__*,int) ;
 int tuplestore_advance (int ,int) ;
 int tuplestore_gettupleslot (int ,int,int,int *) ;
 int tuplestore_select_read_pointer (int ,int ) ;
 int tuplestore_skiptuples (int ,int,int) ;

__attribute__((used)) static bool
window_gettupleslot(WindowObject winobj, int64 pos, TupleTableSlot *slot)
{
 WindowAggState *winstate = winobj->winstate;
 MemoryContext oldcontext;


 CHECK_FOR_INTERRUPTS();


 if (pos < 0)
  return 0;


 spool_tuples(winstate, pos);

 if (pos >= winstate->spooled_rows)
  return 0;

 if (pos < winobj->markpos)
  elog(ERROR, "cannot fetch row before WindowObject's mark position");

 oldcontext = MemoryContextSwitchTo(winstate->ss.ps.ps_ExprContext->ecxt_per_query_memory);

 tuplestore_select_read_pointer(winstate->buffer, winobj->readptr);




 if (winobj->seekpos < pos - 1)
 {
  if (!tuplestore_skiptuples(winstate->buffer,
           pos - 1 - winobj->seekpos,
           1))
   elog(ERROR, "unexpected end of tuplestore");
  winobj->seekpos = pos - 1;
 }
 else if (winobj->seekpos > pos + 1)
 {
  if (!tuplestore_skiptuples(winstate->buffer,
           winobj->seekpos - (pos + 1),
           0))
   elog(ERROR, "unexpected end of tuplestore");
  winobj->seekpos = pos + 1;
 }
 else if (winobj->seekpos == pos)
 {







  tuplestore_advance(winstate->buffer, 1);
  winobj->seekpos++;
 }





 if (winobj->seekpos > pos)
 {
  if (!tuplestore_gettupleslot(winstate->buffer, 0, 1, slot))
   elog(ERROR, "unexpected end of tuplestore");
  winobj->seekpos--;
 }
 else
 {
  if (!tuplestore_gettupleslot(winstate->buffer, 1, 1, slot))
   elog(ERROR, "unexpected end of tuplestore");
  winobj->seekpos++;
 }

 Assert(winobj->seekpos == pos);

 MemoryContextSwitchTo(oldcontext);

 return 1;
}
