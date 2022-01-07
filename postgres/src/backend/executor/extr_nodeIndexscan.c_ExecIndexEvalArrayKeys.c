
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_9__ {int ecxt_per_tuple_memory; } ;
struct TYPE_8__ {int* elem_nulls; int num_elems; int next_elem; int * elem_values; int * array_expr; TYPE_1__* scan_key; } ;
struct TYPE_7__ {int sk_flags; int sk_argument; } ;
typedef TYPE_1__* ScanKey ;
typedef int MemoryContext ;
typedef TYPE_2__ IndexArrayKeyInfo ;
typedef int ExprState ;
typedef TYPE_3__ ExprContext ;
typedef int Datum ;
typedef int ArrayType ;


 int ARR_ELEMTYPE (int *) ;
 int * DatumGetArrayTypeP (int ) ;
 int ExecEvalExpr (int *,TYPE_3__*,int*) ;
 int MemoryContextSwitchTo (int ) ;
 int SK_ISNULL ;
 int deconstruct_array (int *,int ,int ,int,char,int **,int**,int*) ;
 int get_typlenbyvalalign (int ,int *,int*,char*) ;

bool
ExecIndexEvalArrayKeys(ExprContext *econtext,
        IndexArrayKeyInfo *arrayKeys, int numArrayKeys)
{
 bool result = 1;
 int j;
 MemoryContext oldContext;


 oldContext = MemoryContextSwitchTo(econtext->ecxt_per_tuple_memory);

 for (j = 0; j < numArrayKeys; j++)
 {
  ScanKey scan_key = arrayKeys[j].scan_key;
  ExprState *array_expr = arrayKeys[j].array_expr;
  Datum arraydatum;
  bool isNull;
  ArrayType *arrayval;
  int16 elmlen;
  bool elmbyval;
  char elmalign;
  int num_elems;
  Datum *elem_values;
  bool *elem_nulls;





  arraydatum = ExecEvalExpr(array_expr,
          econtext,
          &isNull);
  if (isNull)
  {
   result = 0;
   break;
  }
  arrayval = DatumGetArrayTypeP(arraydatum);

  get_typlenbyvalalign(ARR_ELEMTYPE(arrayval),
        &elmlen, &elmbyval, &elmalign);
  deconstruct_array(arrayval,
        ARR_ELEMTYPE(arrayval),
        elmlen, elmbyval, elmalign,
        &elem_values, &elem_nulls, &num_elems);
  if (num_elems <= 0)
  {
   result = 0;
   break;
  }






  arrayKeys[j].elem_values = elem_values;
  arrayKeys[j].elem_nulls = elem_nulls;
  arrayKeys[j].num_elems = num_elems;
  scan_key->sk_argument = elem_values[0];
  if (elem_nulls[0])
   scan_key->sk_flags |= SK_ISNULL;
  else
   scan_key->sk_flags &= ~SK_ISNULL;
  arrayKeys[j].next_elem = 1;
 }

 MemoryContextSwitchTo(oldContext);

 return result;
}
