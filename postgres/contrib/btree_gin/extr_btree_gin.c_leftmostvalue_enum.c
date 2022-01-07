
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;

__attribute__((used)) static Datum
leftmostvalue_enum(void)
{
 return ObjectIdGetDatum(InvalidOid);
}
