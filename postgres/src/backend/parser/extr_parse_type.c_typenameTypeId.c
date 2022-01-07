
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TypeName ;
typedef int Type ;
struct TYPE_2__ {int oid; } ;
typedef int ParseState ;
typedef int Oid ;
typedef TYPE_1__* Form_pg_type ;


 scalar_t__ GETSTRUCT (int ) ;
 int ReleaseSysCache (int ) ;
 int typenameType (int *,int const*,int *) ;

Oid
typenameTypeId(ParseState *pstate, const TypeName *typeName)
{
 Oid typoid;
 Type tup;

 tup = typenameType(pstate, typeName, ((void*)0));
 typoid = ((Form_pg_type) GETSTRUCT(tup))->oid;
 ReleaseSysCache(tup);

 return typoid;
}
