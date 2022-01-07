
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int cur_elem; int mark_elem; } ;
struct TYPE_6__ {int numArrayKeys; TYPE_3__* arrayKeys; } ;
struct TYPE_5__ {int opaque; } ;
typedef TYPE_1__* IndexScanDesc ;
typedef TYPE_2__* BTScanOpaque ;
typedef TYPE_3__ BTArrayKeyInfo ;



void
_bt_mark_array_keys(IndexScanDesc scan)
{
 BTScanOpaque so = (BTScanOpaque) scan->opaque;
 int i;

 for (i = 0; i < so->numArrayKeys; i++)
 {
  BTArrayKeyInfo *curArrayKey = &so->arrayKeys[i];

  curArrayKey->mark_elem = curArrayKey->cur_elem;
 }
}
