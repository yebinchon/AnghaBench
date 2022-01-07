
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_8__ {int * ecxt_scantuple; } ;
struct TYPE_7__ {scalar_t__ keystate; TYPE_1__* key; } ;
struct TYPE_6__ {scalar_t__ partexprs; int partnatts; scalar_t__* partattrs; } ;
typedef TYPE_2__* PartitionDispatch ;
typedef int ListCell ;
typedef int ExprState ;
typedef int EState ;
typedef int Datum ;
typedef scalar_t__ AttrNumber ;


 int Assert (int) ;
 int ERROR ;
 int ExecEvalExprSwitchContext (int *,TYPE_3__*,int*) ;
 scalar_t__ ExecPrepareExprList (scalar_t__,int *) ;
 TYPE_3__* GetPerTupleExprContext (int *) ;
 scalar_t__ NIL ;
 int elog (int ,char*) ;
 scalar_t__ lfirst (int *) ;
 int * list_head (scalar_t__) ;
 int * lnext (scalar_t__,int *) ;
 int slot_getattr (int *,scalar_t__,int*) ;

__attribute__((used)) static void
FormPartitionKeyDatum(PartitionDispatch pd,
       TupleTableSlot *slot,
       EState *estate,
       Datum *values,
       bool *isnull)
{
 ListCell *partexpr_item;
 int i;

 if (pd->key->partexprs != NIL && pd->keystate == NIL)
 {

  Assert(estate != ((void*)0) &&
      GetPerTupleExprContext(estate)->ecxt_scantuple == slot);


  pd->keystate = ExecPrepareExprList(pd->key->partexprs, estate);
 }

 partexpr_item = list_head(pd->keystate);
 for (i = 0; i < pd->key->partnatts; i++)
 {
  AttrNumber keycol = pd->key->partattrs[i];
  Datum datum;
  bool isNull;

  if (keycol != 0)
  {

   datum = slot_getattr(slot, keycol, &isNull);
  }
  else
  {

   if (partexpr_item == ((void*)0))
    elog(ERROR, "wrong number of partition key expressions");
   datum = ExecEvalExprSwitchContext((ExprState *) lfirst(partexpr_item),
             GetPerTupleExprContext(estate),
             &isNull);
   partexpr_item = lnext(pd->keystate, partexpr_item);
  }
  values[i] = datum;
  isnull[i] = isNull;
 }

 if (partexpr_item != ((void*)0))
  elog(ERROR, "wrong number of partition key expressions");
}
