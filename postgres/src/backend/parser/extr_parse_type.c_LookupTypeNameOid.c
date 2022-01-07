
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int location; } ;
typedef TYPE_1__ TypeName ;
typedef int * Type ;
struct TYPE_7__ {int oid; } ;
typedef int ParseState ;
typedef int Oid ;
typedef TYPE_2__* Form_pg_type ;


 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int *) ;
 int InvalidOid ;
 int * LookupTypeName (int *,TYPE_1__ const*,int *,int) ;
 int ReleaseSysCache (int *) ;
 int TypeNameToString (TYPE_1__ const*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int parser_errposition (int *,int ) ;

Oid
LookupTypeNameOid(ParseState *pstate, const TypeName *typeName, bool missing_ok)
{
 Oid typoid;
 Type tup;

 tup = LookupTypeName(pstate, typeName, ((void*)0), missing_ok);
 if (tup == ((void*)0))
 {
  if (!missing_ok)
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_OBJECT),
      errmsg("type \"%s\" does not exist",
       TypeNameToString(typeName)),
      parser_errposition(pstate, typeName->location)));

  return InvalidOid;
 }

 typoid = ((Form_pg_type) GETSTRUCT(tup))->oid;
 ReleaseSysCache(tup);

 return typoid;
}
