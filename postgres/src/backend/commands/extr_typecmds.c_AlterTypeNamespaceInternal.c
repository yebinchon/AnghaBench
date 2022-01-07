
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ typtype; void* typrelid; void* typnamespace; int typname; void* typarray; } ;
struct TYPE_12__ {int t_self; } ;
struct TYPE_11__ {scalar_t__ objectSubId; void* objectId; int classId; } ;
typedef int Relation ;
typedef void* Oid ;
typedef int ObjectAddresses ;
typedef TYPE_1__ ObjectAddress ;
typedef TYPE_2__* HeapTuple ;
typedef TYPE_3__* Form_pg_type ;


 int AlterConstraintNamespaces (void*,void*,void*,int,int *) ;
 int AlterRelationNamespaceInternal (int ,void*,void*,void*,int,int *) ;
 int CatalogTupleUpdate (int ,int *,TYPE_2__*) ;
 int CheckSetNamespace (void*,void*) ;
 int ERRCODE_DUPLICATE_OBJECT ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_2__*) ;
 int HeapTupleIsValid (TYPE_2__*) ;
 void* InvalidOid ;
 int InvokeObjectPostAlterHook (int ,void*,int ) ;
 int NameGetDatum (int *) ;
 int NameStr (int ) ;
 int NamespaceRelationId ;
 int ObjectIdGetDatum (void*) ;
 scalar_t__ OidIsValid (void*) ;
 scalar_t__ RELKIND_COMPOSITE_TYPE ;
 int RelationRelationId ;
 int RowExclusiveLock ;
 TYPE_2__* SearchSysCacheCopy1 (int ,int ) ;
 scalar_t__ SearchSysCacheExists2 (int ,int ,int ) ;
 int TYPENAMENSP ;
 int TYPEOID ;
 scalar_t__ TYPTYPE_COMPOSITE ;
 scalar_t__ TYPTYPE_DOMAIN ;
 int TypeRelationId ;
 int add_exact_object_address (TYPE_1__*,int *) ;
 int changeDependencyFor (int ,void*,int ,void*,void*) ;
 int elog (int ,char*,void*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,void*,...) ;
 void* format_type_be (void*) ;
 int get_namespace_name (void*) ;
 scalar_t__ get_rel_relkind (void*) ;
 int heap_freetuple (TYPE_2__*) ;
 scalar_t__ object_address_present (TYPE_1__*,int *) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

Oid
AlterTypeNamespaceInternal(Oid typeOid, Oid nspOid,
         bool isImplicitArray,
         bool errorOnTableType,
         ObjectAddresses *objsMoved)
{
 Relation rel;
 HeapTuple tup;
 Form_pg_type typform;
 Oid oldNspOid;
 Oid arrayOid;
 bool isCompositeType;
 ObjectAddress thisobj;




 thisobj.classId = TypeRelationId;
 thisobj.objectId = typeOid;
 thisobj.objectSubId = 0;

 if (object_address_present(&thisobj, objsMoved))
  return InvalidOid;

 rel = table_open(TypeRelationId, RowExclusiveLock);

 tup = SearchSysCacheCopy1(TYPEOID, ObjectIdGetDatum(typeOid));
 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for type %u", typeOid);
 typform = (Form_pg_type) GETSTRUCT(tup);

 oldNspOid = typform->typnamespace;
 arrayOid = typform->typarray;


 if (oldNspOid != nspOid)
 {

  CheckSetNamespace(oldNspOid, nspOid);


  if (SearchSysCacheExists2(TYPENAMENSP,
          NameGetDatum(&typform->typname),
          ObjectIdGetDatum(nspOid)))
   ereport(ERROR,
     (errcode(ERRCODE_DUPLICATE_OBJECT),
      errmsg("type \"%s\" already exists in schema \"%s\"",
       NameStr(typform->typname),
       get_namespace_name(nspOid))));
 }


 isCompositeType =
  (typform->typtype == TYPTYPE_COMPOSITE &&
   get_rel_relkind(typform->typrelid) == RELKIND_COMPOSITE_TYPE);


 if (typform->typtype == TYPTYPE_COMPOSITE && !isCompositeType &&
  errorOnTableType)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("%s is a table's row type",
      format_type_be(typeOid)),
     errhint("Use ALTER TABLE instead.")));

 if (oldNspOid != nspOid)
 {



  typform->typnamespace = nspOid;

  CatalogTupleUpdate(rel, &tup->t_self, tup);
 }







 if (isCompositeType)
 {
  Relation classRel;

  classRel = table_open(RelationRelationId, RowExclusiveLock);

  AlterRelationNamespaceInternal(classRel, typform->typrelid,
            oldNspOid, nspOid,
            0, objsMoved);

  table_close(classRel, RowExclusiveLock);





  AlterConstraintNamespaces(typform->typrelid, oldNspOid,
          nspOid, 0, objsMoved);
 }
 else
 {

  if (typform->typtype == TYPTYPE_DOMAIN)
   AlterConstraintNamespaces(typeOid, oldNspOid, nspOid, 1,
           objsMoved);
 }





 if (oldNspOid != nspOid &&
  (isCompositeType || typform->typtype != TYPTYPE_COMPOSITE) &&
  !isImplicitArray)
  if (changeDependencyFor(TypeRelationId, typeOid,
        NamespaceRelationId, oldNspOid, nspOid) != 1)
   elog(ERROR, "failed to change schema dependency for type %s",
     format_type_be(typeOid));

 InvokeObjectPostAlterHook(TypeRelationId, typeOid, 0);

 heap_freetuple(tup);

 table_close(rel, RowExclusiveLock);

 add_exact_object_address(&thisobj, objsMoved);


 if (OidIsValid(arrayOid))
  AlterTypeNamespaceInternal(arrayOid, nspOid, 1, 1, objsMoved);

 return oldNspOid;
}
