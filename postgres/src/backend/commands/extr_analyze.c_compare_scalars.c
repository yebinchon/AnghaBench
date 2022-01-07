
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* tupnoLink; int ssup; } ;
struct TYPE_3__ {int tupno; int value; } ;
typedef TYPE_1__ ScalarItem ;
typedef int Datum ;
typedef TYPE_2__ CompareScalarsContext ;


 int ApplySortComparator (int ,int,int ,int,int ) ;

__attribute__((used)) static int
compare_scalars(const void *a, const void *b, void *arg)
{
 Datum da = ((const ScalarItem *) a)->value;
 int ta = ((const ScalarItem *) a)->tupno;
 Datum db = ((const ScalarItem *) b)->value;
 int tb = ((const ScalarItem *) b)->tupno;
 CompareScalarsContext *cxt = (CompareScalarsContext *) arg;
 int compare;

 compare = ApplySortComparator(da, 0, db, 0, cxt->ssup);
 if (compare != 0)
  return compare;




 if (cxt->tupnoLink[ta] < tb)
  cxt->tupnoLink[ta] = tb;
 if (cxt->tupnoLink[tb] < ta)
  cxt->tupnoLink[tb] = ta;




 return ta - tb;
}
