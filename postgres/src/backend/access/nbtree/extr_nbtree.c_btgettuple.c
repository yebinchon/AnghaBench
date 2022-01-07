
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int itemIndex; } ;
struct TYPE_10__ {scalar_t__ numArrayKeys; int* killedItems; int numKilled; TYPE_8__ currPos; } ;
struct TYPE_9__ {int xs_recheck; scalar_t__ kill_prior_tuple; int opaque; } ;
typedef int ScanDirection ;
typedef TYPE_1__* IndexScanDesc ;
typedef TYPE_2__* BTScanOpaque ;


 int BTScanPosIsValid (TYPE_8__) ;
 int MaxIndexTuplesPerPage ;
 scalar_t__ _bt_advance_array_keys (TYPE_1__*,int ) ;
 int _bt_first (TYPE_1__*,int ) ;
 int _bt_next (TYPE_1__*,int ) ;
 int _bt_start_array_keys (TYPE_1__*,int ) ;
 scalar_t__ palloc (int) ;

bool
btgettuple(IndexScanDesc scan, ScanDirection dir)
{
 BTScanOpaque so = (BTScanOpaque) scan->opaque;
 bool res;


 scan->xs_recheck = 0;






 if (so->numArrayKeys && !BTScanPosIsValid(so->currPos))
 {

  if (so->numArrayKeys < 0)
   return 0;

  _bt_start_array_keys(scan, dir);
 }


 do
 {





  if (!BTScanPosIsValid(so->currPos))
   res = _bt_first(scan, dir);
  else
  {



   if (scan->kill_prior_tuple)
   {
    if (so->killedItems == ((void*)0))
     so->killedItems = (int *)
      palloc(MaxIndexTuplesPerPage * sizeof(int));
    if (so->numKilled < MaxIndexTuplesPerPage)
     so->killedItems[so->numKilled++] = so->currPos.itemIndex;
   }




   res = _bt_next(scan, dir);
  }


  if (res)
   break;

 } while (so->numArrayKeys && _bt_advance_array_keys(scan, dir));

 return res;
}
