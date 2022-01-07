
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int verify_new_notnull; } ;
struct TYPE_11__ {scalar_t__ attnum; int attnotnull; } ;
struct TYPE_10__ {int t_self; } ;
typedef int Relation ;
typedef int ObjectAddress ;
typedef int LOCKMODE ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_attribute ;
typedef scalar_t__ AttrNumber ;
typedef TYPE_3__ AlteredTableInfo ;


 int AttributeRelationId ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_UNDEFINED_COLUMN ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int InvalidObjectAddress ;
 int InvokeObjectPostAlterHook (int ,int ,scalar_t__) ;
 int NotNullImpliedByRelConstraints (int ,TYPE_2__*) ;
 int ObjectAddressSubSet (int ,int ,int ,scalar_t__) ;
 int RelationGetRelationName (int ) ;
 int RelationGetRelid (int ) ;
 int RelationRelationId ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCacheCopyAttName (int ,char const*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,...) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static ObjectAddress
ATExecSetNotNull(AlteredTableInfo *tab, Relation rel,
     const char *colName, LOCKMODE lockmode)
{
 HeapTuple tuple;
 AttrNumber attnum;
 Relation attr_rel;
 ObjectAddress address;




 attr_rel = table_open(AttributeRelationId, RowExclusiveLock);

 tuple = SearchSysCacheCopyAttName(RelationGetRelid(rel), colName);

 if (!HeapTupleIsValid(tuple))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_COLUMN),
     errmsg("column \"%s\" of relation \"%s\" does not exist",
      colName, RelationGetRelationName(rel))));

 attnum = ((Form_pg_attribute) GETSTRUCT(tuple))->attnum;


 if (attnum <= 0)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot alter system column \"%s\"",
      colName)));




 if (!((Form_pg_attribute) GETSTRUCT(tuple))->attnotnull)
 {
  ((Form_pg_attribute) GETSTRUCT(tuple))->attnotnull = 1;

  CatalogTupleUpdate(attr_rel, &tuple->t_self, tuple);







  if (!tab->verify_new_notnull &&
   !NotNullImpliedByRelConstraints(rel, (Form_pg_attribute) GETSTRUCT(tuple)))
  {

   tab->verify_new_notnull = 1;
  }

  ObjectAddressSubSet(address, RelationRelationId,
       RelationGetRelid(rel), attnum);
 }
 else
  address = InvalidObjectAddress;

 InvokeObjectPostAlterHook(RelationRelationId,
         RelationGetRelid(rel), attnum);

 table_close(attr_rel, RowExclusiveLock);

 return address;
}
