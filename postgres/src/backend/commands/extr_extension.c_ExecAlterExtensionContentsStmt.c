
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ action; int extname; int object; int objtype; } ;
struct TYPE_11__ {scalar_t__ classId; scalar_t__ objectId; scalar_t__ objectSubId; } ;
typedef int * Relation ;
typedef scalar_t__ Oid ;
typedef TYPE_1__ ObjectAddress ;
typedef TYPE_2__ AlterExtensionContentsStmt ;


 int ACLCHECK_NOT_OWNER ;
 int Assert (int) ;
 int DEPENDENCY_EXTENSION ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 scalar_t__ ExtensionRelationId ;
 int GetUserId () ;
 int InvokeObjectPostAlterHook (scalar_t__,scalar_t__,int ) ;
 scalar_t__ NamespaceRelationId ;
 int NoLock ;
 int OBJECT_EXTENSION ;
 scalar_t__ OidIsValid (scalar_t__) ;
 scalar_t__ RelationRelationId ;
 int ShareUpdateExclusiveLock ;
 int aclcheck_error (int ,int ,int ) ;
 int check_object_ownership (int ,int ,TYPE_1__,int ,int *) ;
 int deleteDependencyRecordsForClass (scalar_t__,scalar_t__,scalar_t__,int ) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int ) ;
 int extension_config_remove (scalar_t__,scalar_t__) ;
 scalar_t__ getExtensionOfObject (scalar_t__,scalar_t__) ;
 int getObjectDescription (TYPE_1__*) ;
 int get_extension_name (scalar_t__) ;
 scalar_t__ get_extension_oid (int ,int) ;
 scalar_t__ get_extension_schema (scalar_t__) ;
 int get_namespace_name (scalar_t__) ;
 TYPE_1__ get_object_address (int ,int ,int **,int ,int) ;
 int pg_extension_ownercheck (scalar_t__,int ) ;
 int recordDependencyOn (TYPE_1__*,TYPE_1__*,int ) ;
 int recordExtObjInitPriv (scalar_t__,scalar_t__) ;
 int relation_close (int *,int ) ;
 int removeExtObjInitPriv (scalar_t__,scalar_t__) ;

ObjectAddress
ExecAlterExtensionContentsStmt(AlterExtensionContentsStmt *stmt,
          ObjectAddress *objAddr)
{
 ObjectAddress extension;
 ObjectAddress object;
 Relation relation;
 Oid oldExtension;

 extension.classId = ExtensionRelationId;
 extension.objectId = get_extension_oid(stmt->extname, 0);
 extension.objectSubId = 0;


 if (!pg_extension_ownercheck(extension.objectId, GetUserId()))
  aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_EXTENSION,
        stmt->extname);







 object = get_object_address(stmt->objtype, stmt->object,
        &relation, ShareUpdateExclusiveLock, 0);

 Assert(object.objectSubId == 0);
 if (objAddr)
  *objAddr = object;


 check_object_ownership(GetUserId(), stmt->objtype, object,
         stmt->object, relation);




 oldExtension = getExtensionOfObject(object.classId, object.objectId);

 if (stmt->action > 0)
 {



  if (OidIsValid(oldExtension))
   ereport(ERROR,
     (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
      errmsg("%s is already a member of extension \"%s\"",
       getObjectDescription(&object),
       get_extension_name(oldExtension))));





  if (object.classId == NamespaceRelationId &&
   object.objectId == get_extension_schema(extension.objectId))
   ereport(ERROR,
     (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
      errmsg("cannot add schema \"%s\" to extension \"%s\" "
       "because the schema contains the extension",
       get_namespace_name(object.objectId),
       stmt->extname)));




  recordDependencyOn(&object, &extension, DEPENDENCY_EXTENSION);
  recordExtObjInitPriv(object.objectId, object.classId);
 }
 else
 {



  if (oldExtension != extension.objectId)
   ereport(ERROR,
     (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
      errmsg("%s is not a member of extension \"%s\"",
       getObjectDescription(&object),
       stmt->extname)));




  if (deleteDependencyRecordsForClass(object.classId, object.objectId,
           ExtensionRelationId,
           DEPENDENCY_EXTENSION) != 1)
   elog(ERROR, "unexpected number of extension dependency records");





  if (object.classId == RelationRelationId)
   extension_config_remove(extension.objectId, object.objectId);
  removeExtObjInitPriv(object.objectId, object.classId);
 }

 InvokeObjectPostAlterHook(ExtensionRelationId, extension.objectId, 0);







 if (relation != ((void*)0))
  relation_close(relation, NoLock);

 return extension;
}
