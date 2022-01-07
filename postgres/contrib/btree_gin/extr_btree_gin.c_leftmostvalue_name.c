
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NameData ;
typedef int Datum ;


 int NAMEDATALEN ;
 int NameGetDatum (int *) ;
 scalar_t__ palloc0 (int ) ;

__attribute__((used)) static Datum
leftmostvalue_name(void)
{
 NameData *result = (NameData *) palloc0(NAMEDATALEN);

 return NameGetDatum(result);
}
