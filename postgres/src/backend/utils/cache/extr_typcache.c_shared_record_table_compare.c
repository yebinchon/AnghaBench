
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int dsa_area ;
typedef scalar_t__ TupleDesc ;
struct TYPE_3__ {scalar_t__ local_tupdesc; int shared_tupdesc; } ;
struct TYPE_4__ {TYPE_1__ u; scalar_t__ shared; } ;
typedef TYPE_2__ SharedRecordTableKey ;


 scalar_t__ dsa_get_address (int *,int ) ;
 scalar_t__ equalTupleDescs (scalar_t__,scalar_t__) ;

__attribute__((used)) static int
shared_record_table_compare(const void *a, const void *b, size_t size,
       void *arg)
{
 dsa_area *area = (dsa_area *) arg;
 SharedRecordTableKey *k1 = (SharedRecordTableKey *) a;
 SharedRecordTableKey *k2 = (SharedRecordTableKey *) b;
 TupleDesc t1;
 TupleDesc t2;

 if (k1->shared)
  t1 = (TupleDesc) dsa_get_address(area, k1->u.shared_tupdesc);
 else
  t1 = k1->u.local_tupdesc;

 if (k2->shared)
  t2 = (TupleDesc) dsa_get_address(area, k2->u.shared_tupdesc);
 else
  t2 = k2->u.local_tupdesc;

 return equalTupleDescs(t1, t2) ? 0 : 1;
}
