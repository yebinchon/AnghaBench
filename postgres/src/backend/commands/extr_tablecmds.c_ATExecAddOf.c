
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_42__ TYPE_9__ ;
typedef struct TYPE_41__ TYPE_8__ ;
typedef struct TYPE_40__ TYPE_7__ ;
typedef struct TYPE_39__ TYPE_5__ ;
typedef struct TYPE_38__ TYPE_4__ ;
typedef struct TYPE_37__ TYPE_3__ ;
typedef struct TYPE_36__ TYPE_2__ ;
typedef struct TYPE_35__ TYPE_1__ ;


typedef int TypeName ;
typedef TYPE_2__* Type ;
typedef TYPE_3__* TupleDesc ;
struct TYPE_42__ {scalar_t__ atttypid; scalar_t__ atttypmod; scalar_t__ attcollation; int attname; scalar_t__ attisdropped; } ;
struct TYPE_41__ {void* reloftype; } ;
struct TYPE_40__ {void* oid; } ;
struct TYPE_39__ {scalar_t__ objectSubId; void* objectId; int classId; } ;
struct TYPE_38__ {TYPE_1__* rd_rel; } ;
struct TYPE_37__ {int natts; } ;
struct TYPE_36__ {int t_self; } ;
struct TYPE_35__ {scalar_t__ reloftype; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef TYPE_4__* Relation ;
typedef void* Oid ;
typedef TYPE_5__ ObjectAddress ;
typedef int LOCKMODE ;
typedef TYPE_2__* HeapTuple ;
typedef TYPE_7__* Form_pg_type ;
typedef TYPE_8__* Form_pg_class ;
typedef TYPE_9__* Form_pg_attribute ;
typedef int AttrNumber ;


 int AccessShareLock ;
 int Anum_pg_inherits_inhrelid ;
 int BTEqualStrategyNumber ;
 int CatalogTupleUpdate (TYPE_4__*,int *,TYPE_2__*) ;
 int DEPENDENCY_NORMAL ;
 int DecrTupleDescRefCount (TYPE_3__*) ;
 int ERRCODE_DATATYPE_MISMATCH ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (TYPE_2__*) ;
 scalar_t__ HeapTupleIsValid (TYPE_2__*) ;
 int InheritsRelationId ;
 int InheritsRelidSeqnoIndexId ;
 int InvokeObjectPostAlterHook (int ,void*,int ) ;
 int NAMEDATALEN ;
 char const* NameStr (int ) ;
 int ObjectIdGetDatum (void*) ;
 int RELOID ;
 TYPE_3__* RelationGetDescr (TYPE_4__*) ;
 int RelationGetRelationName (TYPE_4__*) ;
 void* RelationGetRelid (TYPE_4__*) ;
 int RelationRelationId ;
 int ReleaseSysCache (TYPE_2__*) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 TYPE_2__* SearchSysCacheCopy1 (int ,int ) ;
 TYPE_9__* TupleDescAttr (TYPE_3__*,int) ;
 int TypeRelationId ;
 int check_of_type (TYPE_2__*) ;
 int drop_parent_dependency (void*,int ,scalar_t__,int ) ;
 int elog (int ,char*,void*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int heap_freetuple (TYPE_2__*) ;
 TYPE_3__* lookup_rowtype_tupdesc (void*,int) ;
 int recordDependencyOn (TYPE_5__*,TYPE_5__*,int ) ;
 scalar_t__ strncmp (char const*,char const*,int ) ;
 int systable_beginscan (TYPE_4__*,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_2__* systable_getnext (int ) ;
 int table_close (TYPE_4__*,int ) ;
 TYPE_4__* table_open (int ,int ) ;
 TYPE_2__* typenameType (int *,int const*,int *) ;

__attribute__((used)) static ObjectAddress
ATExecAddOf(Relation rel, const TypeName *ofTypename, LOCKMODE lockmode)
{
 Oid relid = RelationGetRelid(rel);
 Type typetuple;
 Form_pg_type typeform;
 Oid typeid;
 Relation inheritsRelation,
    relationRelation;
 SysScanDesc scan;
 ScanKeyData key;
 AttrNumber table_attno,
    type_attno;
 TupleDesc typeTupleDesc,
    tableTupleDesc;
 ObjectAddress tableobj,
    typeobj;
 HeapTuple classtuple;


 typetuple = typenameType(((void*)0), ofTypename, ((void*)0));
 check_of_type(typetuple);
 typeform = (Form_pg_type) GETSTRUCT(typetuple);
 typeid = typeform->oid;


 inheritsRelation = table_open(InheritsRelationId, AccessShareLock);
 ScanKeyInit(&key,
    Anum_pg_inherits_inhrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(relid));
 scan = systable_beginscan(inheritsRelation, InheritsRelidSeqnoIndexId,
         1, ((void*)0), 1, &key);
 if (HeapTupleIsValid(systable_getnext(scan)))
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("typed tables cannot inherit")));
 systable_endscan(scan);
 table_close(inheritsRelation, AccessShareLock);





 typeTupleDesc = lookup_rowtype_tupdesc(typeid, -1);
 tableTupleDesc = RelationGetDescr(rel);
 table_attno = 1;
 for (type_attno = 1; type_attno <= typeTupleDesc->natts; type_attno++)
 {
  Form_pg_attribute type_attr,
     table_attr;
  const char *type_attname,
       *table_attname;


  type_attr = TupleDescAttr(typeTupleDesc, type_attno - 1);
  if (type_attr->attisdropped)
   continue;
  type_attname = NameStr(type_attr->attname);


  do
  {
   if (table_attno > tableTupleDesc->natts)
    ereport(ERROR,
      (errcode(ERRCODE_DATATYPE_MISMATCH),
       errmsg("table is missing column \"%s\"",
        type_attname)));
   table_attr = TupleDescAttr(tableTupleDesc, table_attno - 1);
   table_attno++;
  } while (table_attr->attisdropped);
  table_attname = NameStr(table_attr->attname);


  if (strncmp(table_attname, type_attname, NAMEDATALEN) != 0)
   ereport(ERROR,
     (errcode(ERRCODE_DATATYPE_MISMATCH),
      errmsg("table has column \"%s\" where type requires \"%s\"",
       table_attname, type_attname)));


  if (table_attr->atttypid != type_attr->atttypid ||
   table_attr->atttypmod != type_attr->atttypmod ||
   table_attr->attcollation != type_attr->attcollation)
   ereport(ERROR,
     (errcode(ERRCODE_DATATYPE_MISMATCH),
      errmsg("table \"%s\" has different type for column \"%s\"",
       RelationGetRelationName(rel), type_attname)));
 }
 DecrTupleDescRefCount(typeTupleDesc);


 for (; table_attno <= tableTupleDesc->natts; table_attno++)
 {
  Form_pg_attribute table_attr = TupleDescAttr(tableTupleDesc,
              table_attno - 1);

  if (!table_attr->attisdropped)
   ereport(ERROR,
     (errcode(ERRCODE_DATATYPE_MISMATCH),
      errmsg("table has extra column \"%s\"",
       NameStr(table_attr->attname))));
 }


 if (rel->rd_rel->reloftype)
  drop_parent_dependency(relid, TypeRelationId, rel->rd_rel->reloftype,
          DEPENDENCY_NORMAL);


 tableobj.classId = RelationRelationId;
 tableobj.objectId = relid;
 tableobj.objectSubId = 0;
 typeobj.classId = TypeRelationId;
 typeobj.objectId = typeid;
 typeobj.objectSubId = 0;
 recordDependencyOn(&tableobj, &typeobj, DEPENDENCY_NORMAL);


 relationRelation = table_open(RelationRelationId, RowExclusiveLock);
 classtuple = SearchSysCacheCopy1(RELOID, ObjectIdGetDatum(relid));
 if (!HeapTupleIsValid(classtuple))
  elog(ERROR, "cache lookup failed for relation %u", relid);
 ((Form_pg_class) GETSTRUCT(classtuple))->reloftype = typeid;
 CatalogTupleUpdate(relationRelation, &classtuple->t_self, classtuple);

 InvokeObjectPostAlterHook(RelationRelationId, relid, 0);

 heap_freetuple(classtuple);
 table_close(relationRelation, RowExclusiveLock);

 ReleaseSysCache(typetuple);

 return typeobj;
}
