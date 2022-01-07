
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct varlena {int dummy; } ;
struct TYPE_9__ {int atomic; } ;
struct TYPE_8__ {scalar_t__ dtype; int freeval; int isnull; int promise; int value; TYPE_1__* datatype; } ;
struct TYPE_7__ {int typlen; } ;
typedef TYPE_2__ PLpgSQL_var ;
typedef TYPE_3__ PLpgSQL_execstate ;
typedef int MemoryContext ;
typedef int Datum ;


 int Assert (int) ;
 scalar_t__ DatumGetPointer (int ) ;
 scalar_t__ DatumIsReadWriteExpandedObject (int ,int,int) ;
 int DeleteExpandedObject (int ) ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ PLPGSQL_DTYPE_PROMISE ;
 scalar_t__ PLPGSQL_DTYPE_VAR ;
 int PLPGSQL_PROMISE_NONE ;
 int PointerGetDatum (int ) ;
 scalar_t__ VARATT_IS_EXTERNAL_NON_EXPANDED (scalar_t__) ;
 int datumCopy (int ,int,int) ;
 int detoast_external_attr (struct varlena*) ;
 int get_eval_mcontext (TYPE_3__*) ;
 int pfree (scalar_t__) ;

__attribute__((used)) static void
assign_simple_var(PLpgSQL_execstate *estate, PLpgSQL_var *var,
      Datum newvalue, bool isnull, bool freeable)
{
 Assert(var->dtype == PLPGSQL_DTYPE_VAR ||
     var->dtype == PLPGSQL_DTYPE_PROMISE);
 if (!estate->atomic && !isnull && var->datatype->typlen == -1 &&
  VARATT_IS_EXTERNAL_NON_EXPANDED(DatumGetPointer(newvalue)))
 {
  MemoryContext oldcxt;
  Datum detoasted;







  oldcxt = MemoryContextSwitchTo(get_eval_mcontext(estate));
  detoasted = PointerGetDatum(detoast_external_attr((struct varlena *) DatumGetPointer(newvalue)));
  MemoryContextSwitchTo(oldcxt);

  if (freeable)
   pfree(DatumGetPointer(newvalue));

  newvalue = datumCopy(detoasted, 0, -1);
  freeable = 1;

 }


 if (var->freeval)
 {
  if (DatumIsReadWriteExpandedObject(var->value,
             var->isnull,
             var->datatype->typlen))
   DeleteExpandedObject(var->value);
  else
   pfree(DatumGetPointer(var->value));
 }

 var->value = newvalue;
 var->isnull = isnull;
 var->freeval = freeable;






 var->promise = PLPGSQL_PROMISE_NONE;
}
