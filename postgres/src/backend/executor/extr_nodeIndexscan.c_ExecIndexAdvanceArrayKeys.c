
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int next_elem; int num_elems; int* elem_nulls; int * elem_values; TYPE_1__* scan_key; } ;
struct TYPE_4__ {int sk_flags; int sk_argument; } ;
typedef TYPE_1__* ScanKey ;
typedef TYPE_2__ IndexArrayKeyInfo ;
typedef int Datum ;


 int SK_ISNULL ;

bool
ExecIndexAdvanceArrayKeys(IndexArrayKeyInfo *arrayKeys, int numArrayKeys)
{
 bool found = 0;
 int j;







 for (j = numArrayKeys - 1; j >= 0; j--)
 {
  ScanKey scan_key = arrayKeys[j].scan_key;
  int next_elem = arrayKeys[j].next_elem;
  int num_elems = arrayKeys[j].num_elems;
  Datum *elem_values = arrayKeys[j].elem_values;
  bool *elem_nulls = arrayKeys[j].elem_nulls;

  if (next_elem >= num_elems)
  {
   next_elem = 0;
   found = 0;
  }
  else
   found = 1;
  scan_key->sk_argument = elem_values[next_elem];
  if (elem_nulls[next_elem])
   scan_key->sk_flags |= SK_ISNULL;
  else
   scan_key->sk_flags &= ~SK_ISNULL;
  arrayKeys[j].next_elem = next_elem + 1;
  if (found)
   break;
 }

 return found;
}
