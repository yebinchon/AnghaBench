
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int32 ;
typedef int TypeName ;
typedef int Type ;
struct TYPE_2__ {int oid; } ;
typedef int ParseState ;
typedef int Oid ;
typedef TYPE_1__* Form_pg_type ;


 scalar_t__ GETSTRUCT (int ) ;
 int ReleaseSysCache (int ) ;
 int typenameType (int *,int const*,int *) ;

void
typenameTypeIdAndMod(ParseState *pstate, const TypeName *typeName,
      Oid *typeid_p, int32 *typmod_p)
{
 Type tup;

 tup = typenameType(pstate, typeName, typmod_p);
 *typeid_p = ((Form_pg_type) GETSTRUCT(tup))->oid;
 ReleaseSysCache(tup);
}
