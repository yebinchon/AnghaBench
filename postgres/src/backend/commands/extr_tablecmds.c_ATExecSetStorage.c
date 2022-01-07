
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ attnum; char attstorage; int atttypid; } ;
struct TYPE_8__ {int t_self; } ;
typedef int Relation ;
typedef int ObjectAddress ;
typedef int Node ;
typedef int LOCKMODE ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_attribute ;
typedef scalar_t__ AttrNumber ;


 int Assert (int ) ;
 int AttributeRelationId ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERRCODE_UNDEFINED_COLUMN ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int InvokeObjectPostAlterHook (int ,int ,scalar_t__) ;
 int IsA (int *,int ) ;
 int ObjectAddressSubSet (int ,int ,int ,scalar_t__) ;
 int RelationGetRelationName (int ) ;
 int RelationGetRelid (int ) ;
 int RelationRelationId ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCacheCopyAttName (int ,char const*) ;
 int String ;
 scalar_t__ TypeIsToastable (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,...) ;
 char const* format_type_be (int ) ;
 int heap_freetuple (TYPE_1__*) ;
 scalar_t__ pg_strcasecmp (char*,char*) ;
 char* strVal (int *) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static ObjectAddress
ATExecSetStorage(Relation rel, const char *colName, Node *newValue, LOCKMODE lockmode)
{
 char *storagemode;
 char newstorage;
 Relation attrelation;
 HeapTuple tuple;
 Form_pg_attribute attrtuple;
 AttrNumber attnum;
 ObjectAddress address;

 Assert(IsA(newValue, String));
 storagemode = strVal(newValue);

 if (pg_strcasecmp(storagemode, "plain") == 0)
  newstorage = 'p';
 else if (pg_strcasecmp(storagemode, "external") == 0)
  newstorage = 'e';
 else if (pg_strcasecmp(storagemode, "extended") == 0)
  newstorage = 'x';
 else if (pg_strcasecmp(storagemode, "main") == 0)
  newstorage = 'm';
 else
 {
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("invalid storage type \"%s\"",
      storagemode)));
  newstorage = 0;
 }

 attrelation = table_open(AttributeRelationId, RowExclusiveLock);

 tuple = SearchSysCacheCopyAttName(RelationGetRelid(rel), colName);

 if (!HeapTupleIsValid(tuple))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_COLUMN),
     errmsg("column \"%s\" of relation \"%s\" does not exist",
      colName, RelationGetRelationName(rel))));
 attrtuple = (Form_pg_attribute) GETSTRUCT(tuple);

 attnum = attrtuple->attnum;
 if (attnum <= 0)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot alter system column \"%s\"",
      colName)));





 if (newstorage == 'p' || TypeIsToastable(attrtuple->atttypid))
  attrtuple->attstorage = newstorage;
 else
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("column data type %s can only have storage PLAIN",
      format_type_be(attrtuple->atttypid))));

 CatalogTupleUpdate(attrelation, &tuple->t_self, tuple);

 InvokeObjectPostAlterHook(RelationRelationId,
         RelationGetRelid(rel),
         attrtuple->attnum);

 heap_freetuple(tuple);

 table_close(attrelation, RowExclusiveLock);

 ObjectAddressSubSet(address, RelationRelationId,
      RelationGetRelid(rel), attnum);
 return address;
}
