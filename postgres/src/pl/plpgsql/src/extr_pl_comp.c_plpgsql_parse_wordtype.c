
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TypeName ;
struct TYPE_9__ {int fn_input_collation; } ;
struct TYPE_8__ {scalar_t__ typrelid; int typisdefined; } ;
struct TYPE_7__ {int itemtype; size_t itemno; } ;
struct TYPE_6__ {int * datatype; } ;
typedef TYPE_1__ PLpgSQL_var ;
typedef int PLpgSQL_type ;
typedef TYPE_2__ PLpgSQL_nsitem ;
typedef scalar_t__ HeapTuple ;
typedef TYPE_3__* Form_pg_type ;


 int GETSTRUCT (scalar_t__) ;
 scalar_t__ InvalidOid ;
 scalar_t__ LookupTypeName (int *,int *,int *,int) ;

 int ReleaseSysCache (scalar_t__) ;
 int * build_datatype (scalar_t__,int,int ,int *) ;
 int * makeTypeName (char*) ;
 scalar_t__* plpgsql_Datums ;
 TYPE_5__* plpgsql_curr_compile ;
 TYPE_2__* plpgsql_ns_lookup (int ,int,char*,int *,int *,int *) ;
 int plpgsql_ns_top () ;

PLpgSQL_type *
plpgsql_parse_wordtype(char *ident)
{
 PLpgSQL_type *dtype;
 PLpgSQL_nsitem *nse;
 TypeName *typeName;
 HeapTuple typeTup;




 nse = plpgsql_ns_lookup(plpgsql_ns_top(), 0,
       ident, ((void*)0), ((void*)0),
       ((void*)0));

 if (nse != ((void*)0))
 {
  switch (nse->itemtype)
  {
   case 128:
    return ((PLpgSQL_var *) (plpgsql_Datums[nse->itemno]))->datatype;



   default:
    return ((void*)0);
  }
 }





 typeName = makeTypeName(ident);
 typeTup = LookupTypeName(((void*)0), typeName, ((void*)0), 0);
 if (typeTup)
 {
  Form_pg_type typeStruct = (Form_pg_type) GETSTRUCT(typeTup);

  if (!typeStruct->typisdefined ||
   typeStruct->typrelid != InvalidOid)
  {
   ReleaseSysCache(typeTup);
   return ((void*)0);
  }

  dtype = build_datatype(typeTup, -1,
          plpgsql_curr_compile->fn_input_collation,
          typeName);

  ReleaseSysCache(typeTup);
  return dtype;
 }





 return ((void*)0);
}
