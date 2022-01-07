
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {size_t scan_key; int mark_elem; int cur_elem; int * elem_values; } ;
struct TYPE_9__ {int numArrayKeys; int qual_ok; TYPE_1__* arrayKeyData; TYPE_4__* arrayKeys; } ;
struct TYPE_8__ {int opaque; } ;
struct TYPE_7__ {int sk_argument; } ;
typedef TYPE_1__* ScanKey ;
typedef TYPE_2__* IndexScanDesc ;
typedef TYPE_3__* BTScanOpaque ;
typedef TYPE_4__ BTArrayKeyInfo ;


 int Assert (int ) ;
 int _bt_preprocess_keys (TYPE_2__*) ;

void
_bt_restore_array_keys(IndexScanDesc scan)
{
 BTScanOpaque so = (BTScanOpaque) scan->opaque;
 bool changed = 0;
 int i;


 for (i = 0; i < so->numArrayKeys; i++)
 {
  BTArrayKeyInfo *curArrayKey = &so->arrayKeys[i];
  ScanKey skey = &so->arrayKeyData[curArrayKey->scan_key];
  int mark_elem = curArrayKey->mark_elem;

  if (curArrayKey->cur_elem != mark_elem)
  {
   curArrayKey->cur_elem = mark_elem;
   skey->sk_argument = curArrayKey->elem_values[mark_elem];
   changed = 1;
  }
 }






 if (changed)
 {
  _bt_preprocess_keys(scan);

  Assert(so->qual_ok);
 }
}
