
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32 ;
typedef int HeapTupleHeader ;


 scalar_t__ DatumGetInt32 (int ) ;
 int GetAttributeByName (int ,char*,int*) ;

bool
c_overpaid(HeapTupleHeader t,
     int32 limit)
{
 bool isnull;
 int32 salary;

 salary = DatumGetInt32(GetAttributeByName(t, "salary", &isnull));
 if (isnull)
  return 0;
 return salary > limit;
}
