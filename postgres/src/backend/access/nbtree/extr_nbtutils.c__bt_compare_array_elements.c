
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_2__ {scalar_t__ reverse; int collation; int flinfo; } ;
typedef int Datum ;
typedef TYPE_1__ BTSortArrayContext ;


 int DatumGetInt32 (int ) ;
 int FunctionCall2Coll (int *,int ,int ,int ) ;
 int INVERT_COMPARE_RESULT (int) ;

__attribute__((used)) static int
_bt_compare_array_elements(const void *a, const void *b, void *arg)
{
 Datum da = *((const Datum *) a);
 Datum db = *((const Datum *) b);
 BTSortArrayContext *cxt = (BTSortArrayContext *) arg;
 int32 compare;

 compare = DatumGetInt32(FunctionCall2Coll(&cxt->flinfo,
             cxt->collation,
             da, db));
 if (cxt->reverse)
  INVERT_COMPARE_RESULT(compare);
 return compare;
}
