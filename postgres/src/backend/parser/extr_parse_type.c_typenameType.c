
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
struct TYPE_7__ {int typisdefined; } ;
typedef int ParseState ;
typedef TYPE_2__* Form_pg_type ;


 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int *) ;
 int * LookupTypeName (int *,TYPE_1__ const*,int *,int) ;
 int TypeNameToString (TYPE_1__ const*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int parser_errposition (int *,int ) ;

Type
typenameType(ParseState *pstate, const TypeName *typeName, int32 *typmod_p)
{
 Type tup;

 tup = LookupTypeName(pstate, typeName, typmod_p, 0);
 if (tup == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("type \"%s\" does not exist",
      TypeNameToString(typeName)),
     parser_errposition(pstate, typeName->location)));
 if (!((Form_pg_type) GETSTRUCT(tup))->typisdefined)
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("type \"%s\" is only a shell",
      TypeNameToString(typeName)),
     parser_errposition(pstate, typeName->location)));
 return tup;
}
