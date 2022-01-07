
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int amname; } ;
typedef int Oid ;
typedef int List ;
typedef int * HeapTuple ;
typedef TYPE_1__* Form_pg_am ;


 int AMOID ;
 int CLAAMNAMENSP ;
 int CLAOID ;
 int DeconstructQualifiedName (int *,char**,char**) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int *) ;
 int HeapTupleIsValid (int *) ;
 int LookupExplicitNamespace (char*,int) ;
 int NameListToString (int *) ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 int OpclassnameGetOpcid (int ,char*) ;
 int PointerGetDatum (char*) ;
 int * SearchSysCache1 (int ,int ) ;
 int * SearchSysCache3 (int ,int ,int ,int ) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int ) ;

__attribute__((used)) static HeapTuple
OpClassCacheLookup(Oid amID, List *opclassname, bool missing_ok)
{
 char *schemaname;
 char *opcname;
 HeapTuple htup;


 DeconstructQualifiedName(opclassname, &schemaname, &opcname);

 if (schemaname)
 {

  Oid namespaceId;

  namespaceId = LookupExplicitNamespace(schemaname, missing_ok);
  if (!OidIsValid(namespaceId))
   htup = ((void*)0);
  else
   htup = SearchSysCache3(CLAAMNAMENSP,
           ObjectIdGetDatum(amID),
           PointerGetDatum(opcname),
           ObjectIdGetDatum(namespaceId));
 }
 else
 {

  Oid opcID = OpclassnameGetOpcid(amID, opcname);

  if (!OidIsValid(opcID))
   htup = ((void*)0);
  else
   htup = SearchSysCache1(CLAOID, ObjectIdGetDatum(opcID));
 }

 if (!HeapTupleIsValid(htup) && !missing_ok)
 {
  HeapTuple amtup;

  amtup = SearchSysCache1(AMOID, ObjectIdGetDatum(amID));
  if (!HeapTupleIsValid(amtup))
   elog(ERROR, "cache lookup failed for access method %u", amID);
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("operator class \"%s\" does not exist for access method \"%s\"",
      NameListToString(opclassname),
      NameStr(((Form_pg_am) GETSTRUCT(amtup))->amname))));
 }

 return htup;
}
