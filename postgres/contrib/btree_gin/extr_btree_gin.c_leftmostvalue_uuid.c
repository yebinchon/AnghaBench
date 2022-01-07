
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pg_uuid_t ;
typedef int Datum ;


 int UUIDPGetDatum (int *) ;
 scalar_t__ palloc0 (int) ;

__attribute__((used)) static Datum
leftmostvalue_uuid(void)
{




 pg_uuid_t *retval = (pg_uuid_t *) palloc0(sizeof(pg_uuid_t));

 return UUIDPGetDatum(retval);
}
