
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int ecxt_per_tuple_memory; } ;
struct TYPE_8__ {scalar_t__ key_toastable; int * key_expr; TYPE_1__* scan_key; } ;
struct TYPE_7__ {int sk_flags; void* sk_argument; } ;
typedef TYPE_1__* ScanKey ;
typedef int MemoryContext ;
typedef TYPE_2__ IndexRuntimeKeyInfo ;
typedef int ExprState ;
typedef TYPE_3__ ExprContext ;
typedef void* Datum ;


 void* ExecEvalExpr (int *,TYPE_3__*,int*) ;
 int MemoryContextSwitchTo (int ) ;
 int PG_DETOAST_DATUM (void*) ;
 void* PointerGetDatum (int ) ;
 int SK_ISNULL ;

void
ExecIndexEvalRuntimeKeys(ExprContext *econtext,
       IndexRuntimeKeyInfo *runtimeKeys, int numRuntimeKeys)
{
 int j;
 MemoryContext oldContext;


 oldContext = MemoryContextSwitchTo(econtext->ecxt_per_tuple_memory);

 for (j = 0; j < numRuntimeKeys; j++)
 {
  ScanKey scan_key = runtimeKeys[j].scan_key;
  ExprState *key_expr = runtimeKeys[j].key_expr;
  Datum scanvalue;
  bool isNull;
  scanvalue = ExecEvalExpr(key_expr,
         econtext,
         &isNull);
  if (isNull)
  {
   scan_key->sk_argument = scanvalue;
   scan_key->sk_flags |= SK_ISNULL;
  }
  else
  {
   if (runtimeKeys[j].key_toastable)
    scanvalue = PointerGetDatum(PG_DETOAST_DATUM(scanvalue));
   scan_key->sk_argument = scanvalue;
   scan_key->sk_flags &= ~SK_ISNULL;
  }
 }

 MemoryContextSwitchTo(oldContext);
}
