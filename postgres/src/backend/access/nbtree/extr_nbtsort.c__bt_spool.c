
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int index; int sortstate; } ;
typedef int ItemPointer ;
typedef int Datum ;
typedef TYPE_1__ BTSpool ;


 int tuplesort_putindextuplevalues (int ,int ,int ,int *,int*) ;

__attribute__((used)) static void
_bt_spool(BTSpool *btspool, ItemPointer self, Datum *values, bool *isnull)
{
 tuplesort_putindextuplevalues(btspool->sortstate, btspool->index,
          self, values, isnull);
}
