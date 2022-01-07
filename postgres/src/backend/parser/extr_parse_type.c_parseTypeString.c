
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_6__ {int location; } ;
typedef TYPE_1__ TypeName ;
typedef int * Type ;
struct TYPE_7__ {int oid; int typisdefined; } ;
typedef int Oid ;
typedef TYPE_2__* Form_pg_type ;


 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int GETSTRUCT (int *) ;
 int InvalidOid ;
 int * LookupTypeName (int *,TYPE_1__*,int *,int) ;
 int ReleaseSysCache (int *) ;
 int TypeNameToString (TYPE_1__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int parser_errposition (int *,int ) ;
 TYPE_1__* typeStringToTypeName (char const*) ;

void
parseTypeString(const char *str, Oid *typeid_p, int32 *typmod_p, bool missing_ok)
{
 TypeName *typeName;
 Type tup;

 typeName = typeStringToTypeName(str);

 tup = LookupTypeName(((void*)0), typeName, typmod_p, missing_ok);
 if (tup == ((void*)0))
 {
  if (!missing_ok)
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_OBJECT),
      errmsg("type \"%s\" does not exist",
       TypeNameToString(typeName)),
      parser_errposition(((void*)0), typeName->location)));
  *typeid_p = InvalidOid;
 }
 else
 {
  Form_pg_type typ = (Form_pg_type) GETSTRUCT(tup);

  if (!typ->typisdefined)
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_OBJECT),
      errmsg("type \"%s\" is only a shell",
       TypeNameToString(typeName)),
      parser_errposition(((void*)0), typeName->location)));
  *typeid_p = typ->oid;
  ReleaseSysCache(tup);
 }
}
