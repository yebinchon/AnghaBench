
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_8__ {scalar_t__ names; scalar_t__ arrayBounds; int location; scalar_t__ pct_type; int typeOid; } ;
typedef TYPE_1__ TypeName ;
typedef int * Type ;
struct TYPE_9__ {void* relname; void* schemaname; void* catalogname; } ;
typedef TYPE_2__ RangeVar ;
typedef int ParseState ;
typedef int ParseCallbackState ;
typedef int Oid ;
typedef scalar_t__ HeapTuple ;
typedef scalar_t__ AttrNumber ;


 int Anum_pg_type_oid ;
 int Assert (int) ;
 int DeconstructQualifiedName (scalar_t__,char**,char**) ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERRCODE_UNDEFINED_COLUMN ;
 int ERROR ;
 int GetSysCacheOid2 (int ,int ,int ,int ) ;
 int HeapTupleIsValid (scalar_t__) ;
 scalar_t__ InvalidAttrNumber ;
 int InvalidOid ;
 int LookupExplicitNamespace (char*,int) ;
 scalar_t__ NIL ;
 int NOTICE ;
 int NameListToString (scalar_t__) ;
 int NoLock ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ OidIsValid (int ) ;
 int PointerGetDatum (char*) ;
 int RangeVarGetRelid (TYPE_2__*,int ,int) ;
 scalar_t__ SearchSysCache1 (int ,int ) ;
 int TYPENAMENSP ;
 int TYPEOID ;
 char* TypeNameToString (TYPE_1__ const*) ;
 int TypenameGetTypidExtended (char*,int) ;
 int cancel_parser_errposition_callback (int *) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*,...) ;
 void* format_type_be (int ) ;
 int get_array_type (int ) ;
 scalar_t__ get_attnum (int ,char*) ;
 int get_atttype (int ,scalar_t__) ;
 int lfourth (scalar_t__) ;
 int linitial (scalar_t__) ;
 int list_length (scalar_t__) ;
 int lsecond (scalar_t__) ;
 int lthird (scalar_t__) ;
 TYPE_2__* makeRangeVar (int *,int *,int ) ;
 int parser_errposition (int *,int ) ;
 int setup_parser_errposition_callback (int *,int *,int ) ;
 void* strVal (int ) ;
 int typenameTypeMod (int *,TYPE_1__ const*,int *) ;

Type
LookupTypeNameExtended(ParseState *pstate,
        const TypeName *typeName, int32 *typmod_p,
        bool temp_ok, bool missing_ok)
{
 Oid typoid;
 HeapTuple tup;
 int32 typmod;

 if (typeName->names == NIL)
 {

  typoid = typeName->typeOid;
 }
 else if (typeName->pct_type)
 {

  RangeVar *rel = makeRangeVar(((void*)0), ((void*)0), typeName->location);
  char *field = ((void*)0);
  Oid relid;
  AttrNumber attnum;


  switch (list_length(typeName->names))
  {
   case 1:
    ereport(ERROR,
      (errcode(ERRCODE_SYNTAX_ERROR),
       errmsg("improper %%TYPE reference (too few dotted names): %s",
        NameListToString(typeName->names)),
       parser_errposition(pstate, typeName->location)));
    break;
   case 2:
    rel->relname = strVal(linitial(typeName->names));
    field = strVal(lsecond(typeName->names));
    break;
   case 3:
    rel->schemaname = strVal(linitial(typeName->names));
    rel->relname = strVal(lsecond(typeName->names));
    field = strVal(lthird(typeName->names));
    break;
   case 4:
    rel->catalogname = strVal(linitial(typeName->names));
    rel->schemaname = strVal(lsecond(typeName->names));
    rel->relname = strVal(lthird(typeName->names));
    field = strVal(lfourth(typeName->names));
    break;
   default:
    ereport(ERROR,
      (errcode(ERRCODE_SYNTAX_ERROR),
       errmsg("improper %%TYPE reference (too many dotted names): %s",
        NameListToString(typeName->names)),
       parser_errposition(pstate, typeName->location)));
    break;
  }
  relid = RangeVarGetRelid(rel, NoLock, missing_ok);
  attnum = get_attnum(relid, field);
  if (attnum == InvalidAttrNumber)
  {
   if (missing_ok)
    typoid = InvalidOid;
   else
    ereport(ERROR,
      (errcode(ERRCODE_UNDEFINED_COLUMN),
       errmsg("column \"%s\" of relation \"%s\" does not exist",
        field, rel->relname),
       parser_errposition(pstate, typeName->location)));
  }
  else
  {
   typoid = get_atttype(relid, attnum);


   Assert(typeName->arrayBounds == NIL);


   ereport(NOTICE,
     (errmsg("type reference %s converted to %s",
       TypeNameToString(typeName),
       format_type_be(typoid))));
  }
 }
 else
 {

  char *schemaname;
  char *typname;


  DeconstructQualifiedName(typeName->names, &schemaname, &typname);

  if (schemaname)
  {

   Oid namespaceId;
   ParseCallbackState pcbstate;

   setup_parser_errposition_callback(&pcbstate, pstate, typeName->location);

   namespaceId = LookupExplicitNamespace(schemaname, missing_ok);
   if (OidIsValid(namespaceId))
    typoid = GetSysCacheOid2(TYPENAMENSP, Anum_pg_type_oid,
           PointerGetDatum(typname),
           ObjectIdGetDatum(namespaceId));
   else
    typoid = InvalidOid;

   cancel_parser_errposition_callback(&pcbstate);
  }
  else
  {

   typoid = TypenameGetTypidExtended(typname, temp_ok);
  }


  if (typeName->arrayBounds != NIL)
   typoid = get_array_type(typoid);
 }

 if (!OidIsValid(typoid))
 {
  if (typmod_p)
   *typmod_p = -1;
  return ((void*)0);
 }

 tup = SearchSysCache1(TYPEOID, ObjectIdGetDatum(typoid));
 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for type %u", typoid);

 typmod = typenameTypeMod(pstate, typeName, (Type) tup);

 if (typmod_p)
  *typmod_p = typmod;

 return (Type) tup;
}
