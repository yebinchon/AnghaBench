
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int values ;
typedef int replaces ;
typedef int nulls ;
struct TYPE_15__ {int collname; } ;
struct TYPE_14__ {int collcollate; int collprovider; } ;
struct TYPE_13__ {int t_self; } ;
typedef int Relation ;
typedef int Oid ;
typedef int ObjectAddress ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_collation ;
typedef int Datum ;
typedef TYPE_3__ AlterCollationStmt ;


 int ACLCHECK_NOT_OWNER ;
 int Anum_pg_collation_collversion ;
 int COLLOID ;
 int CStringGetTextDatum (char*) ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int CollationRelationId ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int GetUserId () ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int InvokeObjectPostAlterHook (int ,int ,int ) ;
 int NOTICE ;
 int NameListToString (int ) ;
 int NameStr (int ) ;
 int Natts_pg_collation ;
 int NoLock ;
 int OBJECT_COLLATION ;
 int ObjectAddressSet (int ,int ,int ) ;
 int ObjectIdGetDatum (int ) ;
 int RelationGetDescr (int ) ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCacheCopy1 (int ,int ) ;
 int SysCacheGetAttr (int ,TYPE_1__*,int,int*) ;
 char* TextDatumGetCString (int) ;
 int aclcheck_error (int ,int ,int ) ;
 int elog (int ,char*,...) ;
 int ereport (int ,int ) ;
 int errmsg (char*,...) ;
 char* get_collation_actual_version (int ,int ) ;
 int get_collation_oid (int ,int) ;
 int heap_freetuple (TYPE_1__*) ;
 TYPE_1__* heap_modify_tuple (TYPE_1__*,int ,int*,int*,int*) ;
 int memset (int*,int,int) ;
 int pg_collation_ownercheck (int ,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

ObjectAddress
AlterCollation(AlterCollationStmt *stmt)
{
 Relation rel;
 Oid collOid;
 HeapTuple tup;
 Form_pg_collation collForm;
 Datum collversion;
 bool isnull;
 char *oldversion;
 char *newversion;
 ObjectAddress address;

 rel = table_open(CollationRelationId, RowExclusiveLock);
 collOid = get_collation_oid(stmt->collname, 0);

 if (!pg_collation_ownercheck(collOid, GetUserId()))
  aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_COLLATION,
        NameListToString(stmt->collname));

 tup = SearchSysCacheCopy1(COLLOID, ObjectIdGetDatum(collOid));
 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for collation %u", collOid);

 collForm = (Form_pg_collation) GETSTRUCT(tup);
 collversion = SysCacheGetAttr(COLLOID, tup, Anum_pg_collation_collversion,
          &isnull);
 oldversion = isnull ? ((void*)0) : TextDatumGetCString(collversion);

 newversion = get_collation_actual_version(collForm->collprovider, NameStr(collForm->collcollate));


 if ((!oldversion && newversion) || (oldversion && !newversion))
  elog(ERROR, "invalid collation version change");
 else if (oldversion && newversion && strcmp(newversion, oldversion) != 0)
 {
  bool nulls[Natts_pg_collation];
  bool replaces[Natts_pg_collation];
  Datum values[Natts_pg_collation];

  ereport(NOTICE,
    (errmsg("changing version from %s to %s",
      oldversion, newversion)));

  memset(values, 0, sizeof(values));
  memset(nulls, 0, sizeof(nulls));
  memset(replaces, 0, sizeof(replaces));

  values[Anum_pg_collation_collversion - 1] = CStringGetTextDatum(newversion);
  replaces[Anum_pg_collation_collversion - 1] = 1;

  tup = heap_modify_tuple(tup, RelationGetDescr(rel),
        values, nulls, replaces);
 }
 else
  ereport(NOTICE,
    (errmsg("version has not changed")));

 CatalogTupleUpdate(rel, &tup->t_self, tup);

 InvokeObjectPostAlterHook(CollationRelationId, collOid, 0);

 ObjectAddressSet(address, CollationRelationId, collOid);

 heap_freetuple(tup);
 table_close(rel, NoLock);

 return address;
}
