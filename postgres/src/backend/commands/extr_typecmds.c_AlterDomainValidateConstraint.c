
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int TypeName ;
struct TYPE_15__ {scalar_t__ contype; int convalidated; int oid; } ;
struct TYPE_14__ {int t_self; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int ObjectAddress ;
typedef int List ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_constraint ;
typedef int Datum ;


 int AccessShareLock ;
 int Anum_pg_constraint_conbin ;
 int Anum_pg_constraint_conname ;
 int Anum_pg_constraint_conrelid ;
 int Anum_pg_constraint_contypid ;
 int BTEqualStrategyNumber ;
 scalar_t__ CONSTRAINT_CHECK ;
 int CONSTROID ;
 int CStringGetDatum (char const*) ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int ConstraintRelationId ;
 int ConstraintRelidTypidNameIndexId ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int F_NAMEEQ ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int InvalidOid ;
 int InvokeObjectPostAlterHook (int ,int ,int ) ;
 int ObjectAddressSet (int ,int ,int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (TYPE_1__*) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 TYPE_1__* SearchSysCache1 (int ,int ) ;
 int SysCacheGetAttr (int ,TYPE_1__*,int ,int*) ;
 int TYPEOID ;
 char* TextDatumGetCString (int ) ;
 int TypeNameToString (int *) ;
 int TypeRelationId ;
 int checkDomainOwner (TYPE_1__*) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,int ) ;
 TYPE_1__* heap_copytuple (TYPE_1__*) ;
 int heap_freetuple (TYPE_1__*) ;
 int * makeTypeNameFromNameList (int *) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_1__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;
 int typenameTypeId (int *,int *) ;
 int validateDomainConstraint (int ,char*) ;

ObjectAddress
AlterDomainValidateConstraint(List *names, const char *constrName)
{
 TypeName *typename;
 Oid domainoid;
 Relation typrel;
 Relation conrel;
 HeapTuple tup;
 Form_pg_constraint con;
 Form_pg_constraint copy_con;
 char *conbin;
 SysScanDesc scan;
 Datum val;
 bool isnull;
 HeapTuple tuple;
 HeapTuple copyTuple;
 ScanKeyData skey[3];
 ObjectAddress address;


 typename = makeTypeNameFromNameList(names);
 domainoid = typenameTypeId(((void*)0), typename);


 typrel = table_open(TypeRelationId, AccessShareLock);

 tup = SearchSysCache1(TYPEOID, ObjectIdGetDatum(domainoid));
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

 scan = systable_beginscan(conrel, ConstraintRelidTypidNameIndexId, 1,
         ((void*)0), 3, skey);


 if (!HeapTupleIsValid(tuple = systable_getnext(scan)))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("constraint \"%s\" of domain \"%s\" does not exist",
      constrName, TypeNameToString(typename))));

 con = (Form_pg_constraint) GETSTRUCT(tuple);
 if (con->contype != CONSTRAINT_CHECK)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("constraint \"%s\" of domain \"%s\" is not a check constraint",
      constrName, TypeNameToString(typename))));

 val = SysCacheGetAttr(CONSTROID, tuple,
        Anum_pg_constraint_conbin,
        &isnull);
 if (isnull)
  elog(ERROR, "null conbin for constraint %u",
    con->oid);
 conbin = TextDatumGetCString(val);

 validateDomainConstraint(domainoid, conbin);




 copyTuple = heap_copytuple(tuple);
 copy_con = (Form_pg_constraint) GETSTRUCT(copyTuple);
 copy_con->convalidated = 1;
 CatalogTupleUpdate(conrel, &copyTuple->t_self, copyTuple);

 InvokeObjectPostAlterHook(ConstraintRelationId, con->oid, 0);

 ObjectAddressSet(address, TypeRelationId, domainoid);

 heap_freetuple(copyTuple);

 systable_endscan(scan);

 table_close(typrel, AccessShareLock);
 table_close(conrel, RowExclusiveLock);

 ReleaseSysCache(tup);

 return address;
}
