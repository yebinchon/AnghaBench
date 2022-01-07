
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int values ;
typedef int nulls ;
struct TYPE_12__ {scalar_t__ objectSubId; void* objectId; int classId; } ;
struct TYPE_11__ {int rd_att; } ;
typedef TYPE_1__* Relation ;
typedef void* Oid ;
typedef TYPE_2__ ObjectAddress ;
typedef int NameData ;
typedef int HeapTuple ;
typedef int Datum ;


 int AccessMethodRelationId ;
 int Anum_pg_opfamily_oid ;
 int Anum_pg_opfamily_opfmethod ;
 int Anum_pg_opfamily_opfname ;
 int Anum_pg_opfamily_opfnamespace ;
 int Anum_pg_opfamily_opfowner ;
 int CStringGetDatum (char const*) ;
 int CatalogTupleInsert (TYPE_1__*,int ) ;
 int DEPENDENCY_AUTO ;
 int DEPENDENCY_NORMAL ;
 int ERRCODE_DUPLICATE_OBJECT ;
 int ERROR ;
 void* GetNewOidWithIndex (TYPE_1__*,int ,int) ;
 void* GetUserId () ;
 int InvokeObjectPostCreateHook (int ,void*,int ) ;
 int NameGetDatum (int *) ;
 int NamespaceRelationId ;
 int Natts_pg_opfamily ;
 int OPFAMILYAMNAMENSP ;
 int ObjectIdGetDatum (void*) ;
 int OperatorFamilyRelationId ;
 int OpfamilyOidIndexId ;
 int RowExclusiveLock ;
 scalar_t__ SearchSysCacheExists3 (int ,int,int ,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,char const*) ;
 int heap_form_tuple (int ,int*,int*) ;
 int heap_freetuple (int ) ;
 int memset (int*,int,int) ;
 int namestrcpy (int *,char const*) ;
 int recordDependencyOn (TYPE_2__*,TYPE_2__*,int ) ;
 int recordDependencyOnCurrentExtension (TYPE_2__*,int) ;
 int recordDependencyOnOwner (int ,void*,void*) ;
 int table_close (TYPE_1__*,int ) ;
 TYPE_1__* table_open (int ,int ) ;

__attribute__((used)) static ObjectAddress
CreateOpFamily(const char *amname, const char *opfname, Oid namespaceoid, Oid amoid)
{
 Oid opfamilyoid;
 Relation rel;
 HeapTuple tup;
 Datum values[Natts_pg_opfamily];
 bool nulls[Natts_pg_opfamily];
 NameData opfName;
 ObjectAddress myself,
    referenced;

 rel = table_open(OperatorFamilyRelationId, RowExclusiveLock);





 if (SearchSysCacheExists3(OPFAMILYAMNAMENSP,
         ObjectIdGetDatum(amoid),
         CStringGetDatum(opfname),
         ObjectIdGetDatum(namespaceoid)))
  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_OBJECT),
     errmsg("operator family \"%s\" for access method \"%s\" already exists",
      opfname, amname)));




 memset(values, 0, sizeof(values));
 memset(nulls, 0, sizeof(nulls));

 opfamilyoid = GetNewOidWithIndex(rel, OpfamilyOidIndexId,
          Anum_pg_opfamily_oid);
 values[Anum_pg_opfamily_oid - 1] = ObjectIdGetDatum(opfamilyoid);
 values[Anum_pg_opfamily_opfmethod - 1] = ObjectIdGetDatum(amoid);
 namestrcpy(&opfName, opfname);
 values[Anum_pg_opfamily_opfname - 1] = NameGetDatum(&opfName);
 values[Anum_pg_opfamily_opfnamespace - 1] = ObjectIdGetDatum(namespaceoid);
 values[Anum_pg_opfamily_opfowner - 1] = ObjectIdGetDatum(GetUserId());

 tup = heap_form_tuple(rel->rd_att, values, nulls);

 CatalogTupleInsert(rel, tup);

 heap_freetuple(tup);




 myself.classId = OperatorFamilyRelationId;
 myself.objectId = opfamilyoid;
 myself.objectSubId = 0;


 referenced.classId = AccessMethodRelationId;
 referenced.objectId = amoid;
 referenced.objectSubId = 0;
 recordDependencyOn(&myself, &referenced, DEPENDENCY_AUTO);


 referenced.classId = NamespaceRelationId;
 referenced.objectId = namespaceoid;
 referenced.objectSubId = 0;
 recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);


 recordDependencyOnOwner(OperatorFamilyRelationId, opfamilyoid, GetUserId());


 recordDependencyOnCurrentExtension(&myself, 0);


 InvokeObjectPostCreateHook(OperatorFamilyRelationId, opfamilyoid, 0);

 table_close(rel, RowExclusiveLock);

 return myself;
}
