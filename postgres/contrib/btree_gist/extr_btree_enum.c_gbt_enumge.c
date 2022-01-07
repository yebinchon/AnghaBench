
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int FmgrInfo ;


 int CallerFInfoFunctionCall2 (int ,int *,int ,int ,int ) ;
 int DatumGetBool (int ) ;
 int InvalidOid ;
 int ObjectIdGetDatum (int const) ;
 int enum_ge ;

__attribute__((used)) static bool
gbt_enumge(const void *a, const void *b, FmgrInfo *flinfo)
{
 return DatumGetBool(
      CallerFInfoFunctionCall2(enum_ge, flinfo, InvalidOid, ObjectIdGetDatum(*((const Oid *) a)), ObjectIdGetDatum(*((const Oid *) b)))
  );
}
