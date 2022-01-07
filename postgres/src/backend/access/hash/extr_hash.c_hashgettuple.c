
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int itemIndex; } ;
struct TYPE_8__ {int* killedItems; int numKilled; TYPE_6__ currPos; } ;
struct TYPE_7__ {int xs_recheck; scalar_t__ kill_prior_tuple; int opaque; } ;
typedef int ScanDirection ;
typedef TYPE_1__* IndexScanDesc ;
typedef TYPE_2__* HashScanOpaque ;


 int HashScanPosIsValid (TYPE_6__) ;
 int MaxIndexTuplesPerPage ;
 int _hash_first (TYPE_1__*,int ) ;
 int _hash_next (TYPE_1__*,int ) ;
 scalar_t__ palloc (int) ;

bool
hashgettuple(IndexScanDesc scan, ScanDirection dir)
{
 HashScanOpaque so = (HashScanOpaque) scan->opaque;
 bool res;


 scan->xs_recheck = 1;






 if (!HashScanPosIsValid(so->currPos))
  res = _hash_first(scan, dir);
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




  res = _hash_next(scan, dir);
 }

 return res;
}
