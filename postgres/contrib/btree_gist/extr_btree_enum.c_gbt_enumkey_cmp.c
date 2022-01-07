
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ lower; scalar_t__ upper; } ;
typedef TYPE_1__ oidKEY ;
struct TYPE_4__ {scalar_t__ t; } ;
typedef TYPE_2__ Nsrt ;
typedef int FmgrInfo ;


 int CallerFInfoFunctionCall2 (int ,int *,int ,int ,int ) ;
 int DatumGetInt32 (int ) ;
 int InvalidOid ;
 int ObjectIdGetDatum (scalar_t__) ;
 int enum_cmp ;

__attribute__((used)) static int
gbt_enumkey_cmp(const void *a, const void *b, FmgrInfo *flinfo)
{
 oidKEY *ia = (oidKEY *) (((const Nsrt *) a)->t);
 oidKEY *ib = (oidKEY *) (((const Nsrt *) b)->t);

 if (ia->lower == ib->lower)
 {
  if (ia->upper == ib->upper)
   return 0;

  return DatumGetInt32(
        CallerFInfoFunctionCall2(enum_cmp, flinfo, InvalidOid, ObjectIdGetDatum(ia->upper), ObjectIdGetDatum(ib->upper))
   );
 }

 return DatumGetInt32(
       CallerFInfoFunctionCall2(enum_cmp, flinfo, InvalidOid, ObjectIdGetDatum(ia->lower), ObjectIdGetDatum(ib->lower))
  );
}
