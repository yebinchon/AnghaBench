
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
typedef int dsa_area ;
typedef scalar_t__ TupleDesc ;
struct TYPE_3__ {scalar_t__ local_tupdesc; int shared_tupdesc; } ;
struct TYPE_4__ {TYPE_1__ u; scalar_t__ shared; } ;
typedef TYPE_2__ SharedRecordTableKey ;


 scalar_t__ dsa_get_address (int *,int ) ;
 int hashTupleDesc (scalar_t__) ;

__attribute__((used)) static uint32
shared_record_table_hash(const void *a, size_t size, void *arg)
{
 dsa_area *area = (dsa_area *) arg;
 SharedRecordTableKey *k = (SharedRecordTableKey *) a;
 TupleDesc t;

 if (k->shared)
  t = (TupleDesc) dsa_get_address(area, k->u.shared_tupdesc);
 else
  t = k->u.local_tupdesc;

 return hashTupleDesc(t);
}
