
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int SQLDropList; int cxt; } ;
struct TYPE_11__ {scalar_t__ classId; scalar_t__ objectSubId; int objectId; } ;
struct TYPE_10__ {int original; int normal; char* schemaname; int istemp; int next; TYPE_2__ address; int objecttype; int addrargs; int addrnames; int objidentity; int objname; } ;
typedef TYPE_1__ SQLDropObject ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_2__ ObjectAddress ;
typedef int MemoryContext ;
typedef scalar_t__ HeapTuple ;
typedef int Datum ;
typedef scalar_t__ AttrNumber ;


 int AccessShareLock ;
 int Assert (int ) ;
 int * DatumGetName (int ) ;
 int DatumGetObjectId (int ) ;
 int EventTriggerSupportsObjectClass (int ) ;
 scalar_t__ InvalidAttrNumber ;
 int MemoryContextSwitchTo (int ) ;
 int NameStr (int ) ;
 scalar_t__ NamespaceRelationId ;
 int RelationGetDescr (int ) ;
 TYPE_8__* currentEventTriggerState ;
 int getObjectClass (TYPE_2__ const*) ;
 int getObjectIdentityParts (TYPE_2__*,int *,int *) ;
 int getObjectTypeDescription (TYPE_2__*) ;
 scalar_t__ get_catalog_object_by_oid (int ,int ,int ) ;
 char* get_namespace_name (int ) ;
 scalar_t__ get_object_attnum_name (scalar_t__) ;
 scalar_t__ get_object_attnum_namespace (scalar_t__) ;
 int get_object_attnum_oid (scalar_t__) ;
 scalar_t__ get_object_namensp_unique (scalar_t__) ;
 int heap_getattr (scalar_t__,scalar_t__,int ,int*) ;
 scalar_t__ isAnyTempNamespace (int ) ;
 scalar_t__ isTempNamespace (int ) ;
 scalar_t__ is_objectclass_supported (scalar_t__) ;
 TYPE_1__* palloc0 (int) ;
 int pfree (TYPE_1__*) ;
 int pstrdup (int ) ;
 int slist_push_head (int *,int *) ;
 int table_close (int ,int ) ;
 int table_open (scalar_t__,int ) ;

void
EventTriggerSQLDropAddObject(const ObjectAddress *object, bool original, bool normal)
{
 SQLDropObject *obj;
 MemoryContext oldcxt;

 if (!currentEventTriggerState)
  return;

 Assert(EventTriggerSupportsObjectClass(getObjectClass(object)));


 if (object->classId == NamespaceRelationId &&
  (isAnyTempNamespace(object->objectId) &&
   !isTempNamespace(object->objectId)))
  return;

 oldcxt = MemoryContextSwitchTo(currentEventTriggerState->cxt);

 obj = palloc0(sizeof(SQLDropObject));
 obj->address = *object;
 obj->original = original;
 obj->normal = normal;







 if (is_objectclass_supported(object->classId))
 {
  Relation catalog;
  HeapTuple tuple;

  catalog = table_open(obj->address.classId, AccessShareLock);
  tuple = get_catalog_object_by_oid(catalog,
            get_object_attnum_oid(object->classId),
            obj->address.objectId);

  if (tuple)
  {
   AttrNumber attnum;
   Datum datum;
   bool isnull;

   attnum = get_object_attnum_namespace(obj->address.classId);
   if (attnum != InvalidAttrNumber)
   {
    datum = heap_getattr(tuple, attnum,
          RelationGetDescr(catalog), &isnull);
    if (!isnull)
    {
     Oid namespaceId;

     namespaceId = DatumGetObjectId(datum);

     if (isTempNamespace(namespaceId))
     {
      obj->schemaname = "pg_temp";
      obj->istemp = 1;
     }
     else if (isAnyTempNamespace(namespaceId))
     {
      pfree(obj);
      table_close(catalog, AccessShareLock);
      MemoryContextSwitchTo(oldcxt);
      return;
     }
     else
     {
      obj->schemaname = get_namespace_name(namespaceId);
      obj->istemp = 0;
     }
    }
   }

   if (get_object_namensp_unique(obj->address.classId) &&
    obj->address.objectSubId == 0)
   {
    attnum = get_object_attnum_name(obj->address.classId);
    if (attnum != InvalidAttrNumber)
    {
     datum = heap_getattr(tuple, attnum,
           RelationGetDescr(catalog), &isnull);
     if (!isnull)
      obj->objname = pstrdup(NameStr(*DatumGetName(datum)));
    }
   }
  }

  table_close(catalog, AccessShareLock);
 }
 else
 {
  if (object->classId == NamespaceRelationId &&
   isTempNamespace(object->objectId))
   obj->istemp = 1;
 }


 obj->objidentity =
  getObjectIdentityParts(&obj->address, &obj->addrnames, &obj->addrargs);


 obj->objecttype = getObjectTypeDescription(&obj->address);

 slist_push_head(&(currentEventTriggerState->SQLDropList), &obj->next);

 MemoryContextSwitchTo(oldcxt);
}
