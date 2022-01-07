
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TypeName ;
struct TYPE_7__ {int oid; } ;
struct TYPE_6__ {scalar_t__ objectSubId; int objectId; int classId; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__ ObjectAddress ;
typedef int List ;
typedef int * HeapTuple ;
typedef TYPE_2__* Form_pg_constraint ;
typedef int DropBehavior ;


 int Anum_pg_constraint_conname ;
 int Anum_pg_constraint_conrelid ;
 int Anum_pg_constraint_contypid ;
 int BTEqualStrategyNumber ;
 int CStringGetDatum (char const*) ;
 int CacheInvalidateHeapTuple (int ,int *,int *) ;
 int ConstraintRelationId ;
 int ConstraintRelidTypidNameIndexId ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int F_NAMEEQ ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (int *) ;
 int HeapTupleIsValid (int *) ;
 int InvalidOid ;
 int NOTICE ;
 int ObjectAddressSet (TYPE_1__,int ,int ) ;
 int ObjectIdGetDatum (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int * SearchSysCacheCopy1 (int ,int ) ;
 int TYPEOID ;
 int TypeNameToString (int *) ;
 int TypeRelationId ;
 int checkDomainOwner (int *) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,int ) ;
 int * makeTypeNameFromNameList (int *) ;
 int performDeletion (TYPE_1__*,int ,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int * systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;
 int typenameTypeId (int *,int *) ;

ObjectAddress
AlterDomainDropConstraint(List *names, const char *constrName,
        DropBehavior behavior, bool missing_ok)
{
 TypeName *typename;
 Oid domainoid;
 HeapTuple tup;
 Relation rel;
 Relation conrel;
 SysScanDesc conscan;
 ScanKeyData skey[3];
 HeapTuple contup;
 bool found = 0;
 ObjectAddress address;


 typename = makeTypeNameFromNameList(names);
 domainoid = typenameTypeId(((void*)0), typename);


 rel = table_open(TypeRelationId, RowExclusiveLock);

 tup = SearchSysCacheCopy1(TYPEOID, ObjectIdGetDatum(domainoid));
 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for type %u", domainoid);


 checkDomainOwner(tup);


 conrel = table_open(ConstraintRelationId, RowExclusiveLock);


 ScanKeyInit(&skey[0],
    Anum_pg_constraint_conrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(InvalidOid));
 ScanKeyInit(&skey[1],
    Anum_pg_constraint_contypid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(domainoid));
 ScanKeyInit(&skey[2],
    Anum_pg_constraint_conname,
    BTEqualStrategyNumber, F_NAMEEQ,
    CStringGetDatum(constrName));

 conscan = systable_beginscan(conrel, ConstraintRelidTypidNameIndexId, 1,
         ((void*)0), 3, skey);


 if ((contup = systable_getnext(conscan)) != ((void*)0))
 {
  ObjectAddress conobj;

  conobj.classId = ConstraintRelationId;
  conobj.objectId = ((Form_pg_constraint) GETSTRUCT(contup))->oid;
  conobj.objectSubId = 0;

  performDeletion(&conobj, behavior, 0);
  found = 1;
 }


 systable_endscan(conscan);
 table_close(conrel, RowExclusiveLock);

 if (!found)
 {
  if (!missing_ok)
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_OBJECT),
      errmsg("constraint \"%s\" of domain \"%s\" does not exist",
       constrName, TypeNameToString(typename))));
  else
   ereport(NOTICE,
     (errmsg("constraint \"%s\" of domain \"%s\" does not exist, skipping",
       constrName, TypeNameToString(typename))));
 }






 CacheInvalidateHeapTuple(rel, tup, ((void*)0));

 ObjectAddressSet(address, TypeRelationId, domainoid);


 table_close(rel, RowExclusiveLock);

 return address;
}
