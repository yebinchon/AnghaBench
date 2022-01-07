
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int opcintype; int oid; } ;
typedef int Oid ;
typedef int List ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_opclass ;


 int CLAAMNAMENSP ;
 int CLAOID ;
 int DeconstructQualifiedName (int *,char**,char**) ;
 int ERRCODE_DATATYPE_MISMATCH ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int GetDefaultOpClass (int ,int ) ;
 int HeapTupleIsValid (int ) ;
 int IsBinaryCoercible (int ,int ) ;
 int LookupExplicitNamespace (char*,int) ;
 int * NIL ;
 char* NameListToString (int *) ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 int OpclassnameGetOpcid (int ,char*) ;
 int PointerGetDatum (char*) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int SearchSysCache3 (int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,char*,char const*) ;
 char const* format_type_be (int ) ;
 int linitial (int *) ;
 int list_length (int *) ;
 char* strVal (int ) ;
 scalar_t__ strcmp (char*,char*) ;

Oid
ResolveOpClass(List *opclass, Oid attrType,
      const char *accessMethodName, Oid accessMethodId)
{
 char *schemaname;
 char *opcname;
 HeapTuple tuple;
 Form_pg_opclass opform;
 Oid opClassId,
    opInputType;
 if (list_length(opclass) == 1)
 {
  char *claname = strVal(linitial(opclass));

  if (strcmp(claname, "network_ops") == 0 ||
   strcmp(claname, "timespan_ops") == 0 ||
   strcmp(claname, "datetime_ops") == 0 ||
   strcmp(claname, "lztext_ops") == 0 ||
   strcmp(claname, "timestamp_ops") == 0 ||
   strcmp(claname, "bigbox_ops") == 0)
   opclass = NIL;
 }

 if (opclass == NIL)
 {

  opClassId = GetDefaultOpClass(attrType, accessMethodId);
  if (!OidIsValid(opClassId))
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_OBJECT),
      errmsg("data type %s has no default operator class for access method \"%s\"",
       format_type_be(attrType), accessMethodName),
      errhint("You must specify an operator class for the index or define a default operator class for the data type.")));
  return opClassId;
 }






 DeconstructQualifiedName(opclass, &schemaname, &opcname);

 if (schemaname)
 {

  Oid namespaceId;

  namespaceId = LookupExplicitNamespace(schemaname, 0);
  tuple = SearchSysCache3(CLAAMNAMENSP,
        ObjectIdGetDatum(accessMethodId),
        PointerGetDatum(opcname),
        ObjectIdGetDatum(namespaceId));
 }
 else
 {

  opClassId = OpclassnameGetOpcid(accessMethodId, opcname);
  if (!OidIsValid(opClassId))
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_OBJECT),
      errmsg("operator class \"%s\" does not exist for access method \"%s\"",
       opcname, accessMethodName)));
  tuple = SearchSysCache1(CLAOID, ObjectIdGetDatum(opClassId));
 }

 if (!HeapTupleIsValid(tuple))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("operator class \"%s\" does not exist for access method \"%s\"",
      NameListToString(opclass), accessMethodName)));





 opform = (Form_pg_opclass) GETSTRUCT(tuple);
 opClassId = opform->oid;
 opInputType = opform->opcintype;

 if (!IsBinaryCoercible(attrType, opInputType))
  ereport(ERROR,
    (errcode(ERRCODE_DATATYPE_MISMATCH),
     errmsg("operator class \"%s\" does not accept data type %s",
      NameListToString(opclass), format_type_be(attrType))));

 ReleaseSysCache(tuple);

 return opClassId;
}
