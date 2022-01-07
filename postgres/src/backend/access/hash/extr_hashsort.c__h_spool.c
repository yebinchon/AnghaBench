
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int index; int sortstate; } ;
typedef int ItemPointer ;
typedef TYPE_1__ HSpool ;
typedef int Datum ;


 int tuplesort_putindextuplevalues (int ,int ,int ,int *,int*) ;

void
_h_spool(HSpool *hspool, ItemPointer self, Datum *values, bool *isnull)
{
 tuplesort_putindextuplevalues(hspool->sortstate, hspool->index,
          self, values, isnull);
}
