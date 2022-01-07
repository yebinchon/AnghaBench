
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int ObjectIdGetDatum (int ) ;

__attribute__((used)) static Datum
leftmostvalue_oid(void)
{
 return ObjectIdGetDatum(0);
}
