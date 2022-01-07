
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ relnamespace; int relname; } ;
struct TYPE_12__ {int t_self; } ;
struct TYPE_11__ {scalar_t__ objectSubId; scalar_t__ objectId; int classId; } ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef int ObjectAddresses ;
typedef TYPE_1__ ObjectAddress ;
typedef TYPE_2__* HeapTuple ;
typedef TYPE_3__* Form_pg_class ;


 int Assert (int) ;
 int CatalogTupleUpdate (int ,int *,TYPE_2__*) ;
 int ERRCODE_DUPLICATE_TABLE ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_2__*) ;
 int HeapTupleIsValid (TYPE_2__*) ;
 scalar_t__ InvalidOid ;
 int InvokeObjectPostAlterHook (int ,scalar_t__,int ) ;
 scalar_t__ NameStr (int ) ;
 int NamespaceRelationId ;
 int ObjectIdGetDatum (scalar_t__) ;
 int RELOID ;
 int RelationRelationId ;
 TYPE_2__* SearchSysCacheCopy1 (int ,int ) ;
 int add_exact_object_address (TYPE_1__*,int *) ;
 int changeDependencyFor (int ,scalar_t__,int ,scalar_t__,scalar_t__) ;
 int elog (int ,char*,scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,scalar_t__,int ) ;
 int get_namespace_name (scalar_t__) ;
 scalar_t__ get_relname_relid (scalar_t__,scalar_t__) ;
 int heap_freetuple (TYPE_2__*) ;
 int object_address_present (TYPE_1__*,int *) ;

void
AlterRelationNamespaceInternal(Relation classRel, Oid relOid,
          Oid oldNspOid, Oid newNspOid,
          bool hasDependEntry,
          ObjectAddresses *objsMoved)
{
 HeapTuple classTup;
 Form_pg_class classForm;
 ObjectAddress thisobj;
 bool already_done = 0;

 classTup = SearchSysCacheCopy1(RELOID, ObjectIdGetDatum(relOid));
 if (!HeapTupleIsValid(classTup))
  elog(ERROR, "cache lookup failed for relation %u", relOid);
 classForm = (Form_pg_class) GETSTRUCT(classTup);

 Assert(classForm->relnamespace == oldNspOid);

 thisobj.classId = RelationRelationId;
 thisobj.objectId = relOid;
 thisobj.objectSubId = 0;






 already_done = object_address_present(&thisobj, objsMoved);
 if (!already_done && oldNspOid != newNspOid)
 {

  if (get_relname_relid(NameStr(classForm->relname),
         newNspOid) != InvalidOid)
   ereport(ERROR,
     (errcode(ERRCODE_DUPLICATE_TABLE),
      errmsg("relation \"%s\" already exists in schema \"%s\"",
       NameStr(classForm->relname),
       get_namespace_name(newNspOid))));


  classForm->relnamespace = newNspOid;

  CatalogTupleUpdate(classRel, &classTup->t_self, classTup);


  if (hasDependEntry &&
   changeDependencyFor(RelationRelationId,
        relOid,
        NamespaceRelationId,
        oldNspOid,
        newNspOid) != 1)
   elog(ERROR, "failed to change schema dependency for relation \"%s\"",
     NameStr(classForm->relname));
 }
 if (!already_done)
 {
  add_exact_object_address(&thisobj, objsMoved);

  InvokeObjectPostAlterHook(RelationRelationId, relOid, 0);
 }

 heap_freetuple(classTup);
}
