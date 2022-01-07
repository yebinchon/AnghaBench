
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ntids; int tbm; } ;
typedef TYPE_1__* SpGistScanOpaque ;
typedef int ItemPointer ;
typedef int Datum ;


 int Assert (int) ;
 int tbm_add_tuples (int ,int ,int,int) ;

__attribute__((used)) static void
storeBitmap(SpGistScanOpaque so, ItemPointer heapPtr,
   Datum leafValue, bool isnull, bool recheck, bool recheckDistances,
   double *distances)
{
 Assert(!recheckDistances && !distances);
 tbm_add_tuples(so->tbm, heapPtr, 1, recheck);
 so->ntids++;
}
