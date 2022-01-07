
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * Type ;
struct TYPE_2__ {scalar_t__ typisdefined; } ;
typedef int Oid ;
typedef int List ;
typedef TYPE_1__* Form_pg_type ;


 scalar_t__ GETSTRUCT (int *) ;
 int InvalidOid ;
 int * LookupTypeNameExtended (int *,int ,int *,int,int) ;
 int OidIsValid (int ) ;
 int ReleaseSysCache (int *) ;
 int makeTypeNameFromNameList (int *) ;
 int typeTypeId (int *) ;
 int typeTypeRelid (int *) ;

__attribute__((used)) static Oid
FuncNameAsType(List *funcname)
{
 Oid result;
 Type typtup;





 typtup = LookupTypeNameExtended(((void*)0), makeTypeNameFromNameList(funcname),
         ((void*)0), 0, 0);
 if (typtup == ((void*)0))
  return InvalidOid;

 if (((Form_pg_type) GETSTRUCT(typtup))->typisdefined &&
  !OidIsValid(typeTypeRelid(typtup)))
  result = typeTypeId(typtup);
 else
  result = InvalidOid;

 ReleaseSysCache(typtup);
 return result;
}
