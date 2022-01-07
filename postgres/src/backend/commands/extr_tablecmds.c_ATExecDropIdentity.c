
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ attnum; char attidentity; } ;
struct TYPE_14__ {int t_self; } ;
struct TYPE_13__ {scalar_t__ objectSubId; int objectId; int classId; } ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__ ObjectAddress ;
typedef int LOCKMODE ;
typedef TYPE_2__* HeapTuple ;
typedef TYPE_3__* Form_pg_attribute ;
typedef scalar_t__ AttrNumber ;


 int AttributeRelationId ;
 int CatalogTupleUpdate (int ,int *,TYPE_2__*) ;
 int CommandCounterIncrement () ;
 int DEPENDENCY_INTERNAL ;
 int DROP_RESTRICT ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERRCODE_UNDEFINED_COLUMN ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_2__*) ;
 int HeapTupleIsValid (TYPE_2__*) ;
 TYPE_1__ InvalidObjectAddress ;
 int InvokeObjectPostAlterHook (int ,int ,scalar_t__) ;
 int NOTICE ;
 int ObjectAddressSubSet (TYPE_1__,int ,int ,scalar_t__) ;
 int PERFORM_DELETION_INTERNAL ;
 int RelationGetRelationName (int ) ;
 int RelationGetRelid (int ) ;
 int RelationRelationId ;
 int RowExclusiveLock ;
 TYPE_2__* SearchSysCacheCopyAttName (int ,char const*) ;
 int deleteDependencyRecordsForClass (int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,...) ;
 int getIdentitySequence (int ,scalar_t__,int) ;
 int heap_freetuple (TYPE_2__*) ;
 int performDeletion (TYPE_1__*,int ,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static ObjectAddress
ATExecDropIdentity(Relation rel, const char *colName, bool missing_ok, LOCKMODE lockmode)
{
 HeapTuple tuple;
 Form_pg_attribute attTup;
 AttrNumber attnum;
 Relation attrelation;
 ObjectAddress address;
 Oid seqid;
 ObjectAddress seqaddress;

 attrelation = table_open(AttributeRelationId, RowExclusiveLock);
 tuple = SearchSysCacheCopyAttName(RelationGetRelid(rel), colName);
 if (!HeapTupleIsValid(tuple))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_COLUMN),
     errmsg("column \"%s\" of relation \"%s\" does not exist",
      colName, RelationGetRelationName(rel))));

 attTup = (Form_pg_attribute) GETSTRUCT(tuple);
 attnum = attTup->attnum;

 if (attnum <= 0)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot alter system column \"%s\"",
      colName)));

 if (!attTup->attidentity)
 {
  if (!missing_ok)
   ereport(ERROR,
     (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
      errmsg("column \"%s\" of relation \"%s\" is not an identity column",
       colName, RelationGetRelationName(rel))));
  else
  {
   ereport(NOTICE,
     (errmsg("column \"%s\" of relation \"%s\" is not an identity column, skipping",
       colName, RelationGetRelationName(rel))));
   heap_freetuple(tuple);
   table_close(attrelation, RowExclusiveLock);
   return InvalidObjectAddress;
  }
 }

 attTup->attidentity = '\0';
 CatalogTupleUpdate(attrelation, &tuple->t_self, tuple);

 InvokeObjectPostAlterHook(RelationRelationId,
         RelationGetRelid(rel),
         attTup->attnum);
 ObjectAddressSubSet(address, RelationRelationId,
      RelationGetRelid(rel), attnum);
 heap_freetuple(tuple);

 table_close(attrelation, RowExclusiveLock);


 seqid = getIdentitySequence(RelationGetRelid(rel), attnum, 0);
 deleteDependencyRecordsForClass(RelationRelationId, seqid,
         RelationRelationId, DEPENDENCY_INTERNAL);
 CommandCounterIncrement();
 seqaddress.classId = RelationRelationId;
 seqaddress.objectId = seqid;
 seqaddress.objectSubId = 0;
 performDeletion(&seqaddress, DROP_RESTRICT, PERFORM_DELETION_INTERNAL);

 return address;
}
