
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ deptype; scalar_t__ objsubid; int objid; int classid; } ;
struct TYPE_17__ {scalar_t__ extnamespace; int extname; int extrelocatable; } ;
struct TYPE_16__ {int t_self; } ;
struct TYPE_15__ {scalar_t__ objectSubId; int objectId; int classId; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef int ObjectAddresses ;
typedef TYPE_1__ ObjectAddress ;
typedef TYPE_2__* HeapTuple ;
typedef TYPE_3__* Form_pg_extension ;
typedef TYPE_4__* Form_pg_depend ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_NOT_OWNER ;
 scalar_t__ ACLCHECK_OK ;
 int ACL_CREATE ;
 int AccessShareLock ;
 scalar_t__ AlterObjectNamespace_oid (int ,int ,scalar_t__,int *) ;
 int Anum_pg_depend_refclassid ;
 int Anum_pg_depend_refobjid ;
 int Anum_pg_extension_oid ;
 int BTEqualStrategyNumber ;
 int CatalogTupleUpdate (int ,int *,TYPE_2__*) ;
 scalar_t__ DEPENDENCY_EXTENSION ;
 int DependReferenceIndexId ;
 scalar_t__ DependRelationId ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 int ExtensionOidIndexId ;
 scalar_t__ ExtensionRelationId ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (TYPE_2__*) ;
 int GetUserId () ;
 scalar_t__ HeapTupleIsValid (TYPE_2__*) ;
 TYPE_1__ InvalidObjectAddress ;
 scalar_t__ InvalidOid ;
 int InvokeObjectPostAlterHook (scalar_t__,scalar_t__,int ) ;
 scalar_t__ LookupCreationNamespace (char const*) ;
 int NameStr (int ) ;
 int NamespaceRelationId ;
 int OBJECT_EXTENSION ;
 int OBJECT_SCHEMA ;
 int ObjectAddressSet (TYPE_1__,scalar_t__,scalar_t__) ;
 int ObjectIdGetDatum (scalar_t__) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int aclcheck_error (scalar_t__,int ,char const*) ;
 int changeDependencyFor (scalar_t__,scalar_t__,int ,scalar_t__,scalar_t__) ;
 int elog (int ,char*,...) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,int ,int ) ;
 int errmsg (char*,char const*,...) ;
 scalar_t__ getExtensionOfObject (int ,scalar_t__) ;
 int getObjectDescription (TYPE_1__*) ;
 scalar_t__ get_extension_oid (char const*,int) ;
 int get_namespace_name (scalar_t__) ;
 TYPE_2__* heap_copytuple (TYPE_2__*) ;
 int * new_object_addresses () ;
 int pg_extension_ownercheck (scalar_t__,int ) ;
 scalar_t__ pg_namespace_aclcheck (scalar_t__,int ,int ) ;
 int relation_close (int ,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_2__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (scalar_t__,int ) ;

ObjectAddress
AlterExtensionNamespace(const char *extensionName, const char *newschema, Oid *oldschema)
{
 Oid extensionOid;
 Oid nspOid;
 Oid oldNspOid = InvalidOid;
 AclResult aclresult;
 Relation extRel;
 ScanKeyData key[2];
 SysScanDesc extScan;
 HeapTuple extTup;
 Form_pg_extension extForm;
 Relation depRel;
 SysScanDesc depScan;
 HeapTuple depTup;
 ObjectAddresses *objsMoved;
 ObjectAddress extAddr;

 extensionOid = get_extension_oid(extensionName, 0);

 nspOid = LookupCreationNamespace(newschema);





 if (!pg_extension_ownercheck(extensionOid, GetUserId()))
  aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_EXTENSION,
        extensionName);


 aclresult = pg_namespace_aclcheck(nspOid, GetUserId(), ACL_CREATE);
 if (aclresult != ACLCHECK_OK)
  aclcheck_error(aclresult, OBJECT_SCHEMA, newschema);





 if (getExtensionOfObject(NamespaceRelationId, nspOid) == extensionOid)
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("cannot move extension \"%s\" into schema \"%s\" "
      "because the extension contains the schema",
      extensionName, newschema)));


 extRel = table_open(ExtensionRelationId, RowExclusiveLock);

 ScanKeyInit(&key[0],
    Anum_pg_extension_oid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(extensionOid));

 extScan = systable_beginscan(extRel, ExtensionOidIndexId, 1,
         ((void*)0), 1, key);

 extTup = systable_getnext(extScan);

 if (!HeapTupleIsValid(extTup))
  elog(ERROR, "could not find tuple for extension %u",
    extensionOid);


 extTup = heap_copytuple(extTup);
 extForm = (Form_pg_extension) GETSTRUCT(extTup);

 systable_endscan(extScan);





 if (extForm->extnamespace == nspOid)
 {
  table_close(extRel, RowExclusiveLock);
  return InvalidObjectAddress;
 }


 if (!extForm->extrelocatable)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("extension \"%s\" does not support SET SCHEMA",
      NameStr(extForm->extname))));

 objsMoved = new_object_addresses();





 depRel = table_open(DependRelationId, AccessShareLock);

 ScanKeyInit(&key[0],
    Anum_pg_depend_refclassid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(ExtensionRelationId));
 ScanKeyInit(&key[1],
    Anum_pg_depend_refobjid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(extensionOid));

 depScan = systable_beginscan(depRel, DependReferenceIndexId, 1,
         ((void*)0), 2, key);

 while (HeapTupleIsValid(depTup = systable_getnext(depScan)))
 {
  Form_pg_depend pg_depend = (Form_pg_depend) GETSTRUCT(depTup);
  ObjectAddress dep;
  Oid dep_oldNspOid;






  if (pg_depend->deptype != DEPENDENCY_EXTENSION)
   continue;

  dep.classId = pg_depend->classid;
  dep.objectId = pg_depend->objid;
  dep.objectSubId = pg_depend->objsubid;

  if (dep.objectSubId != 0)
   elog(ERROR, "extension should not have a sub-object dependency");


  dep_oldNspOid = AlterObjectNamespace_oid(dep.classId,
             dep.objectId,
             nspOid,
             objsMoved);




  if (oldNspOid == InvalidOid && dep_oldNspOid != InvalidOid)
   oldNspOid = dep_oldNspOid;





  if (dep_oldNspOid != InvalidOid && dep_oldNspOid != oldNspOid)
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("extension \"%s\" does not support SET SCHEMA",
       NameStr(extForm->extname)),
      errdetail("%s is not in the extension's schema \"%s\"",
          getObjectDescription(&dep),
          get_namespace_name(oldNspOid))));
 }


 if (oldschema)
  *oldschema = oldNspOid;

 systable_endscan(depScan);

 relation_close(depRel, AccessShareLock);


 extForm->extnamespace = nspOid;

 CatalogTupleUpdate(extRel, &extTup->t_self, extTup);

 table_close(extRel, RowExclusiveLock);


 changeDependencyFor(ExtensionRelationId, extensionOid,
      NamespaceRelationId, oldNspOid, nspOid);

 InvokeObjectPostAlterHook(ExtensionRelationId, extensionOid, 0);

 ObjectAddressSet(extAddr, ExtensionRelationId, extensionOid);

 return extAddr;
}
