
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_17__ {int scan_key; int num_elems; int * elem_values; } ;
struct TYPE_16__ {int numArrayKeys; TYPE_5__* arrayKeys; TYPE_2__* arrayKeyData; int * arrayContext; } ;
struct TYPE_15__ {int numberOfKeys; TYPE_2__* keyData; TYPE_1__* indexRelation; int opaque; } ;
struct TYPE_14__ {int sk_flags; int sk_strategy; int sk_attno; void* sk_argument; } ;
struct TYPE_13__ {int* rd_indoption; } ;
typedef int ScanKeyData ;
typedef TYPE_2__* ScanKey ;
typedef int * MemoryContext ;
typedef TYPE_3__* IndexScanDesc ;
typedef int Datum ;
typedef TYPE_4__* BTScanOpaque ;
typedef TYPE_5__ BTArrayKeyInfo ;
typedef int ArrayType ;


 int ALLOCSET_SMALL_SIZES ;
 int ARR_ELEMTYPE (int *) ;
 int * AllocSetContextCreate (int ,char*,int ) ;
 int Assert (int) ;





 int CurrentMemoryContext ;
 int * DatumGetArrayTypeP (void*) ;
 int ERROR ;
 int INDOPTION_DESC ;
 int MemoryContextReset (int *) ;
 int * MemoryContextSwitchTo (int *) ;
 int SK_ISNULL ;
 int SK_ROW_HEADER ;
 int SK_SEARCHARRAY ;
 int SK_SEARCHNOTNULL ;
 int SK_SEARCHNULL ;
 void* _bt_find_extreme_element (TYPE_3__*,TYPE_2__*,int const,int *,int) ;
 int _bt_sort_array_elements (TYPE_3__*,TYPE_2__*,int,int *,int) ;
 int deconstruct_array (int *,int ,int,int,char,int **,int**,int*) ;
 int elog (int ,char*,int) ;
 int get_typlenbyvalalign (int ,int*,int*,char*) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 scalar_t__ palloc (int) ;
 scalar_t__ palloc0 (int) ;

void
_bt_preprocess_array_keys(IndexScanDesc scan)
{
 BTScanOpaque so = (BTScanOpaque) scan->opaque;
 int numberOfKeys = scan->numberOfKeys;
 int16 *indoption = scan->indexRelation->rd_indoption;
 int numArrayKeys;
 ScanKey cur;
 int i;
 MemoryContext oldContext;


 numArrayKeys = 0;
 for (i = 0; i < numberOfKeys; i++)
 {
  cur = &scan->keyData[i];
  if (cur->sk_flags & SK_SEARCHARRAY)
  {
   numArrayKeys++;
   Assert(!(cur->sk_flags & (SK_ROW_HEADER | SK_SEARCHNULL | SK_SEARCHNOTNULL)));

   if (cur->sk_flags & SK_ISNULL)
   {
    so->numArrayKeys = -1;
    so->arrayKeyData = ((void*)0);
    return;
   }
  }
 }


 if (numArrayKeys == 0)
 {
  so->numArrayKeys = 0;
  so->arrayKeyData = ((void*)0);
  return;
 }





 if (so->arrayContext == ((void*)0))
  so->arrayContext = AllocSetContextCreate(CurrentMemoryContext,
             "BTree array context",
             ALLOCSET_SMALL_SIZES);
 else
  MemoryContextReset(so->arrayContext);

 oldContext = MemoryContextSwitchTo(so->arrayContext);


 so->arrayKeyData = (ScanKey) palloc(scan->numberOfKeys * sizeof(ScanKeyData));
 memcpy(so->arrayKeyData,
     scan->keyData,
     scan->numberOfKeys * sizeof(ScanKeyData));


 so->arrayKeys = (BTArrayKeyInfo *) palloc0(numArrayKeys * sizeof(BTArrayKeyInfo));


 numArrayKeys = 0;
 for (i = 0; i < numberOfKeys; i++)
 {
  ArrayType *arrayval;
  int16 elmlen;
  bool elmbyval;
  char elmalign;
  int num_elems;
  Datum *elem_values;
  bool *elem_nulls;
  int num_nonnulls;
  int j;

  cur = &so->arrayKeyData[i];
  if (!(cur->sk_flags & SK_SEARCHARRAY))
   continue;






  arrayval = DatumGetArrayTypeP(cur->sk_argument);

  get_typlenbyvalalign(ARR_ELEMTYPE(arrayval),
        &elmlen, &elmbyval, &elmalign);
  deconstruct_array(arrayval,
        ARR_ELEMTYPE(arrayval),
        elmlen, elmbyval, elmalign,
        &elem_values, &elem_nulls, &num_elems);





  num_nonnulls = 0;
  for (j = 0; j < num_elems; j++)
  {
   if (!elem_nulls[j])
    elem_values[num_nonnulls++] = elem_values[j];
  }




  if (num_nonnulls == 0)
  {
   numArrayKeys = -1;
   break;
  }






  switch (cur->sk_strategy)
  {
   case 128:
   case 129:
    cur->sk_argument =
     _bt_find_extreme_element(scan, cur,
            130,
            elem_values, num_nonnulls);
    continue;
   case 132:

    break;
   case 131:
   case 130:
    cur->sk_argument =
     _bt_find_extreme_element(scan, cur,
            128,
            elem_values, num_nonnulls);
    continue;
   default:
    elog(ERROR, "unrecognized StrategyNumber: %d",
      (int) cur->sk_strategy);
    break;
  }






  num_elems = _bt_sort_array_elements(scan, cur,
           (indoption[cur->sk_attno - 1] & INDOPTION_DESC) != 0,
           elem_values, num_nonnulls);




  so->arrayKeys[numArrayKeys].scan_key = i;
  so->arrayKeys[numArrayKeys].num_elems = num_elems;
  so->arrayKeys[numArrayKeys].elem_values = elem_values;
  numArrayKeys++;
 }

 so->numArrayKeys = numArrayKeys;

 MemoryContextSwitchTo(oldContext);
}
