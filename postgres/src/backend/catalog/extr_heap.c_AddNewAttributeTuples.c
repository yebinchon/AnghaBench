
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_14__ {int attstattarget; scalar_t__ atttypid; scalar_t__ attcollation; void* attrelid; } ;
struct TYPE_13__ {scalar_t__ objectId; int objectSubId; int classId; } ;
struct TYPE_12__ {int natts; } ;
typedef int Relation ;
typedef void* Oid ;
typedef TYPE_2__ ObjectAddress ;
typedef TYPE_3__* Form_pg_attribute ;
typedef TYPE_3__ FormData_pg_attribute ;
typedef int CatalogIndexState ;


 int AttributeRelationId ;
 int CatalogCloseIndexes (int ) ;
 int CatalogOpenIndexes (int ) ;
 int CollationRelationId ;
 scalar_t__ DEFAULT_COLLATION_OID ;
 int DEPENDENCY_NORMAL ;
 int InsertPgAttributeTuple (int ,TYPE_3__*,int ) ;
 scalar_t__ OidIsValid (scalar_t__) ;
 char RELKIND_COMPOSITE_TYPE ;
 char RELKIND_VIEW ;
 int RelationRelationId ;
 int RowExclusiveLock ;
 int * SysAtt ;
 TYPE_3__* TupleDescAttr (TYPE_1__*,int) ;
 int TypeRelationId ;
 scalar_t__ lengthof (int *) ;
 int memcpy (TYPE_3__*,int ,int) ;
 int recordDependencyOn (TYPE_2__*,TYPE_2__*,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static void
AddNewAttributeTuples(Oid new_rel_oid,
       TupleDesc tupdesc,
       char relkind)
{
 Form_pg_attribute attr;
 int i;
 Relation rel;
 CatalogIndexState indstate;
 int natts = tupdesc->natts;
 ObjectAddress myself,
    referenced;




 rel = table_open(AttributeRelationId, RowExclusiveLock);

 indstate = CatalogOpenIndexes(rel);





 for (i = 0; i < natts; i++)
 {
  attr = TupleDescAttr(tupdesc, i);

  attr->attrelid = new_rel_oid;

  attr->attstattarget = -1;

  InsertPgAttributeTuple(rel, attr, indstate);


  myself.classId = RelationRelationId;
  myself.objectId = new_rel_oid;
  myself.objectSubId = i + 1;
  referenced.classId = TypeRelationId;
  referenced.objectId = attr->atttypid;
  referenced.objectSubId = 0;
  recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);


  if (OidIsValid(attr->attcollation) &&
   attr->attcollation != DEFAULT_COLLATION_OID)
  {
   referenced.classId = CollationRelationId;
   referenced.objectId = attr->attcollation;
   referenced.objectSubId = 0;
   recordDependencyOn(&myself, &referenced, DEPENDENCY_NORMAL);
  }
 }






 if (relkind != RELKIND_VIEW && relkind != RELKIND_COMPOSITE_TYPE)
 {
  for (i = 0; i < (int) lengthof(SysAtt); i++)
  {
   FormData_pg_attribute attStruct;

   memcpy(&attStruct, SysAtt[i], sizeof(FormData_pg_attribute));


   attStruct.attrelid = new_rel_oid;

   InsertPgAttributeTuple(rel, &attStruct, indstate);
  }
 }




 CatalogCloseIndexes(indstate);

 table_close(rel, RowExclusiveLock);
}
