
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pg_uuid_t ;
typedef int SortSupport ;
typedef int Datum ;


 int * DatumGetUUIDP (int ) ;
 int uuid_internal_cmp (int *,int *) ;

__attribute__((used)) static int
uuid_fast_cmp(Datum x, Datum y, SortSupport ssup)
{
 pg_uuid_t *arg1 = DatumGetUUIDP(x);
 pg_uuid_t *arg2 = DatumGetUUIDP(y);

 return uuid_internal_cmp(arg1, arg2);
}
