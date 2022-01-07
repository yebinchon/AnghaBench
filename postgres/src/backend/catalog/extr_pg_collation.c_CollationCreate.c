
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int nulls ;
typedef int int32 ;
typedef int TupleDesc ;
struct TYPE_5__ {char const* objectId; scalar_t__ objectSubId; int classId; } ;
typedef int Relation ;
typedef char const* Oid ;
typedef TYPE_1__ ObjectAddress ;
typedef int NameData ;
typedef int HeapTuple ;
typedef int Datum ;


 int Anum_pg_collation_collcollate ;
 int Anum_pg_collation_collctype ;
 int Anum_pg_collation_collencoding ;
 int Anum_pg_collation_collisdeterministic ;
 int Anum_pg_collation_collname ;
 int Anum_pg_collation_collnamespace ;
 int Anum_pg_collation_collowner ;
 int Anum_pg_collation_collprovider ;
 int Anum_pg_collation_collversion ;
 int Anum_pg_collation_oid ;
 int Assert (int ) ;
 int AssertArg (char const*) ;
 int BoolGetDatum (int) ;
 int COLLNAMEENCNSP ;
 int CStringGetTextDatum (char const*) ;
 int CatalogTupleInsert (int ,int ) ;
 int CharGetDatum (char) ;
 int CollationOidIndexId ;
 int CollationRelationId ;
 int DEPENDENCY_NORMAL ;
 int ERRCODE_DUPLICATE_OBJECT ;
 int ERROR ;
 int GetDatabaseEncoding () ;
 char* GetNewOidWithIndex (int ,int ,int) ;
 int Int32GetDatum (int) ;
 char const* InvalidOid ;
 int InvokeObjectPostCreateHook (int ,char const*,int ) ;
 int NOTICE ;
 int NameGetDatum (int *) ;
 int NamespaceRelationId ;
 int Natts_pg_collation ;
 int NoLock ;
 int ObjectIdGetDatum (char const*) ;
 int OidIsValid (char const*) ;
 int PointerGetDatum (char const*) ;
 int RelationGetDescr (int ) ;
 scalar_t__ SearchSysCacheExists3 (int ,int ,int ,int ) ;
 int ShareRowExclusiveLock ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,...) ;
 int heap_form_tuple (int ,int *,int*) ;
 int heap_freetuple (int ) ;
 int memset (int*,int ,int) ;
 int namestrcpy (int *,char const*) ;
 int pg_encoding_to_char (int) ;
 int recordDependencyOn (TYPE_1__*,TYPE_1__*,int ) ;
 int recordDependencyOnCurrentExtension (TYPE_1__*,int) ;
 int recordDependencyOnOwner (int ,char const*,char const*) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

Oid
CollationCreate(const char *collname, Oid collnamespace,
    Oid collowner,
    char collprovider,
    bool collisdeterministic,
    int32 collencoding,
    const char *collcollate, const char *collctype,
    const char *collversion,
    bool if_not_exists,
    bool quiet)
{
 Relation rel;
 TupleDesc tupDesc;
 HeapTuple tup;
 Datum values[Natts_pg_collation];
 bool nulls[Natts_pg_collation];
 NameData name_name,
    name_collate,
    name_ctype;
 Oid oid;
 ObjectAddress myself,
    referenced;

 AssertArg(collname);
 AssertArg(collnamespace);
 AssertArg(collowner);
 AssertArg(collcollate);
 AssertArg(collctype);
 if (SearchSysCacheExists3(COLLNAMEENCNSP,
         PointerGetDatum(collname),
         Int32GetDatum(collencoding),
         ObjectIdGetDatum(collnamespace)))
 {
  if (quiet)
   return InvalidOid;
  else if (if_not_exists)
  {
   ereport(NOTICE,
     (errcode(ERRCODE_DUPLICATE_OBJECT),
      collencoding == -1
      ? errmsg("collation \"%s\" already exists, skipping",
         collname)
      : errmsg("collation \"%s\" for encoding \"%s\" already exists, skipping",
         collname, pg_encoding_to_char(collencoding))));
   return InvalidOid;
  }
  else
   ereport(ERROR,
     (errcode(ERRCODE_DUPLICATE_OBJECT),
      collencoding == -1
      ? errmsg("collation \"%s\" already exists",
         collname)
      : errmsg("collation \"%s\" for encoding \"%s\" already exists",
         collname, pg_encoding_to_char(collencoding))));
 }


 rel = table_open(CollationRelationId, ShareRowExclusiveLock);
 if ((collencoding == -1 &&
   SearchSysCacheExists3(COLLNAMEENCNSP,
          PointerGetDatum(collname),
          Int32GetDatum(GetDatabaseEncoding()),
          ObjectIdGetDatum(collnamespace))) ||
  (collencoding != -1 &&
   SearchSysCacheExists3(COLLNAMEENCNSP,
          PointerGetDatum(collname),
          Int32GetDatum(-1),
          ObjectIdGetDatum(collnamespace))))
 {
  if (quiet)
  {
   table_close(rel, NoLock);
   return InvalidOid;
  }
  else if (if_not_exists)
  {
   table_close(rel, NoLock);
   ereport(NOTICE,
     (errcode(ERRCODE_DUPLICATE_OBJECT),
      errmsg("collation \"%s\" already exists, skipping",
       collname)));
   return InvalidOid;
  }
  else
   ereport(ERROR,
     (errcode(ERRCODE_DUPLICATE_OBJECT),
      errmsg("collation \"%s\" already exists",
       collname)));
 }

 tupDesc = RelationGetDescr(rel);


 memset(nulls, 0, sizeof(nulls));

 namestrcpy(&name_name, collname);
 oid = GetNewOidWithIndex(rel, CollationOidIndexId,
        Anum_pg_collation_oid);
 values[Anum_pg_collation_oid - 1] = ObjectIdGetDatum(oid);
 values[Anum_pg_collation_collname - 1] = NameGetDatum(&name_name);
 values[Anum_pg_collation_collnamespace - 1] = ObjectIdGetDatum(collnamespace);
 values[Anum_pg_collation_collowner - 1] = ObjectIdGetDatum(collowner);
 values[Anum_pg_collation_collprovider - 1] = CharGetDatum(collprovider);
 values[Anum_pg_collation_collisdeterministic - 1] = BoolGetDatum(collisdeterministic);
 values[Anum_pg_collation_collencoding - 1] = Int32GetDatum(collencoding);
 namestrcpy(&name_collate, collcollate);
 values[Anum_pg_collation_collcollate - 1] = NameGetDatum(&name_collate);
 namestrcpy(&name_ctype, collctype);
 values[Anum_pg_collation_collctype - 1] = NameGetDatum(&name_ctype);
 if (collversion)
  values[Anum_pg_collation_collversion - 1] = CStringGetTextDatum(collversion);
 else
  nulls[Anum_pg_collation_collversion - 1] = 1;

 tup = heap_form_tuple(tupDesc, values, nulls);


 CatalogTupleInsert(rel, tup);
 Assert(OidIsValid(oid));


 myself.classId = CollationRelationId;
 myself.objectId = oid;
 myself.objectSubId = 0;


 referenced.classId = NamespaceRelationId;
 referenced.objectId = collnamespace;
 referenced.objectSubId = 0;
 recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);


 recordDependencyOnOwner(CollationRelationId, oid, collowner);


 recordDependencyOnCurrentExtension(&myself, 0);


 InvokeObjectPostCreateHook(CollationRelationId, oid, 0);

 heap_freetuple(tup);
 table_close(rel, NoLock);

 return oid;
}
