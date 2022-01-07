
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {size_t scan_key; int cur_elem; int num_elems; int * elem_values; } ;
struct TYPE_9__ {int numArrayKeys; TYPE_1__* arrayKeyData; TYPE_4__* arrayKeys; } ;
struct TYPE_8__ {int * parallel_scan; int opaque; } ;
struct TYPE_7__ {int sk_argument; } ;
typedef TYPE_1__* ScanKey ;
typedef int ScanDirection ;
typedef TYPE_2__* IndexScanDesc ;
typedef TYPE_3__* BTScanOpaque ;
typedef TYPE_4__ BTArrayKeyInfo ;


 scalar_t__ ScanDirectionIsBackward (int ) ;
 int _bt_parallel_advance_array_keys (TYPE_2__*) ;

bool
_bt_advance_array_keys(IndexScanDesc scan, ScanDirection dir)
{
 BTScanOpaque so = (BTScanOpaque) scan->opaque;
 bool found = 0;
 int i;







 for (i = so->numArrayKeys - 1; i >= 0; i--)
 {
  BTArrayKeyInfo *curArrayKey = &so->arrayKeys[i];
  ScanKey skey = &so->arrayKeyData[curArrayKey->scan_key];
  int cur_elem = curArrayKey->cur_elem;
  int num_elems = curArrayKey->num_elems;

  if (ScanDirectionIsBackward(dir))
  {
   if (--cur_elem < 0)
   {
    cur_elem = num_elems - 1;
    found = 0;
   }
   else
    found = 1;
  }
  else
  {
   if (++cur_elem >= num_elems)
   {
    cur_elem = 0;
    found = 0;
   }
   else
    found = 1;
  }

  curArrayKey->cur_elem = cur_elem;
  skey->sk_argument = curArrayKey->elem_values[cur_elem];
  if (found)
   break;
 }


 if (scan->parallel_scan != ((void*)0))
  _bt_parallel_advance_array_keys(scan);

 return found;
}
