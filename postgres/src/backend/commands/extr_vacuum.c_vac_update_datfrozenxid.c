
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ TransactionId ;
struct TYPE_4__ {scalar_t__ relkind; scalar_t__ relfrozenxid; scalar_t__ relminmxid; } ;
struct TYPE_3__ {scalar_t__ datfrozenxid; scalar_t__ datminmxid; } ;
typedef int SysScanDesc ;
typedef int Relation ;
typedef scalar_t__ MultiXactId ;
typedef int * HeapTuple ;
typedef TYPE_1__* Form_pg_database ;
typedef TYPE_2__* Form_pg_class ;


 int AccessShareLock ;
 int Assert (int) ;
 int DATABASEOID ;
 int DatabaseRelationId ;
 int ERROR ;
 scalar_t__ ForceTransactionIdLimitUpdate () ;
 scalar_t__ GETSTRUCT (int *) ;
 scalar_t__ GetOldestMultiXactId () ;
 scalar_t__ GetOldestXmin (int *,int ) ;
 int HeapTupleIsValid (int *) ;
 int InvalidOid ;
 int MultiXactIdIsValid (scalar_t__) ;
 scalar_t__ MultiXactIdPrecedes (scalar_t__,scalar_t__) ;
 int MyDatabaseId ;
 int ObjectIdGetDatum (int ) ;
 int PROCARRAY_FLAGS_VACUUM ;
 scalar_t__ RELKIND_MATVIEW ;
 scalar_t__ RELKIND_RELATION ;
 scalar_t__ RELKIND_TOASTVALUE ;
 scalar_t__ ReadNewTransactionId () ;
 scalar_t__ ReadNextMultiXactId () ;
 int RelationRelationId ;
 int RowExclusiveLock ;
 int * SearchSysCacheCopy1 (int ,int ) ;
 int TransactionIdIsNormal (scalar_t__) ;
 scalar_t__ TransactionIdIsValid (scalar_t__) ;
 scalar_t__ TransactionIdPrecedes (scalar_t__,scalar_t__) ;
 int elog (int ,char*,int ) ;
 int heap_freetuple (int *) ;
 int heap_inplace_update (int ,int *) ;
 int systable_beginscan (int ,int ,int,int *,int ,int *) ;
 int systable_endscan (int ) ;
 int * systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;
 int vac_truncate_clog (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

void
vac_update_datfrozenxid(void)
{
 HeapTuple tuple;
 Form_pg_database dbform;
 Relation relation;
 SysScanDesc scan;
 HeapTuple classTup;
 TransactionId newFrozenXid;
 MultiXactId newMinMulti;
 TransactionId lastSaneFrozenXid;
 MultiXactId lastSaneMinMulti;
 bool bogus = 0;
 bool dirty = 0;







 newFrozenXid = GetOldestXmin(((void*)0), PROCARRAY_FLAGS_VACUUM);





 newMinMulti = GetOldestMultiXactId();






 lastSaneFrozenXid = ReadNewTransactionId();
 lastSaneMinMulti = ReadNextMultiXactId();





 relation = table_open(RelationRelationId, AccessShareLock);

 scan = systable_beginscan(relation, InvalidOid, 0,
         ((void*)0), 0, ((void*)0));

 while ((classTup = systable_getnext(scan)) != ((void*)0))
 {
  Form_pg_class classForm = (Form_pg_class) GETSTRUCT(classTup);





  if (classForm->relkind != RELKIND_RELATION &&
   classForm->relkind != RELKIND_MATVIEW &&
   classForm->relkind != RELKIND_TOASTVALUE)
  {
   Assert(!TransactionIdIsValid(classForm->relfrozenxid));
   Assert(!MultiXactIdIsValid(classForm->relminmxid));
   continue;
  }
  if (TransactionIdIsValid(classForm->relfrozenxid))
  {
   Assert(TransactionIdIsNormal(classForm->relfrozenxid));


   if (TransactionIdPrecedes(lastSaneFrozenXid, classForm->relfrozenxid))
   {
    bogus = 1;
    break;
   }


   if (TransactionIdPrecedes(classForm->relfrozenxid, newFrozenXid))
    newFrozenXid = classForm->relfrozenxid;
  }

  if (MultiXactIdIsValid(classForm->relminmxid))
  {

   if (MultiXactIdPrecedes(lastSaneMinMulti, classForm->relminmxid))
   {
    bogus = 1;
    break;
   }


   if (MultiXactIdPrecedes(classForm->relminmxid, newMinMulti))
    newMinMulti = classForm->relminmxid;
  }
 }


 systable_endscan(scan);
 table_close(relation, AccessShareLock);


 if (bogus)
  return;

 Assert(TransactionIdIsNormal(newFrozenXid));
 Assert(MultiXactIdIsValid(newMinMulti));


 relation = table_open(DatabaseRelationId, RowExclusiveLock);


 tuple = SearchSysCacheCopy1(DATABASEOID, ObjectIdGetDatum(MyDatabaseId));
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "could not find tuple for database %u", MyDatabaseId);
 dbform = (Form_pg_database) GETSTRUCT(tuple);






 if (dbform->datfrozenxid != newFrozenXid &&
  (TransactionIdPrecedes(dbform->datfrozenxid, newFrozenXid) ||
   TransactionIdPrecedes(lastSaneFrozenXid, dbform->datfrozenxid)))
 {
  dbform->datfrozenxid = newFrozenXid;
  dirty = 1;
 }
 else
  newFrozenXid = dbform->datfrozenxid;


 if (dbform->datminmxid != newMinMulti &&
  (MultiXactIdPrecedes(dbform->datminmxid, newMinMulti) ||
   MultiXactIdPrecedes(lastSaneMinMulti, dbform->datminmxid)))
 {
  dbform->datminmxid = newMinMulti;
  dirty = 1;
 }
 else
  newMinMulti = dbform->datminmxid;

 if (dirty)
  heap_inplace_update(relation, tuple);

 heap_freetuple(tuple);
 table_close(relation, RowExclusiveLock);






 if (dirty || ForceTransactionIdLimitUpdate())
  vac_truncate_clog(newFrozenXid, newMinMulti,
        lastSaneFrozenXid, lastSaneMinMulti);
}
