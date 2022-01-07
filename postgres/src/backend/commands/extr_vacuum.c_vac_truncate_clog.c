
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TransactionId ;
typedef int TableScanDesc ;
struct TYPE_3__ {int oid; int datminmxid; int datfrozenxid; } ;
typedef int Relation ;
typedef int Oid ;
typedef int MultiXactId ;
typedef int * HeapTuple ;
typedef TYPE_1__* Form_pg_database ;
typedef TYPE_1__ FormData_pg_database ;


 int AccessShareLock ;
 int AdvanceOldestCommitTsXid (int ) ;
 int Assert (int ) ;
 int DatabaseRelationId ;
 int ForwardScanDirection ;
 int GETSTRUCT (int *) ;
 int MultiXactIdIsValid (int ) ;
 scalar_t__ MultiXactIdPrecedes (int ,int ) ;
 int MyDatabaseId ;
 int ReadNewTransactionId () ;
 int SetMultiXactIdLimit (int ,int ,int) ;
 int SetTransactionIdLimit (int ,int ) ;
 int TransactionIdIsNormal (int ) ;
 scalar_t__ TransactionIdPrecedes (int ,int ) ;
 int TruncateCLOG (int ,int ) ;
 int TruncateCommitTs (int ) ;
 int TruncateMultiXact (int ,int ) ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errdetail (char*) ;
 int errmsg (char*) ;
 int * heap_getnext (int ,int ) ;
 int table_beginscan_catalog (int ,int ,int *) ;
 int table_close (int ,int ) ;
 int table_endscan (int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static void
vac_truncate_clog(TransactionId frozenXID,
      MultiXactId minMulti,
      TransactionId lastSaneFrozenXid,
      MultiXactId lastSaneMinMulti)
{
 TransactionId nextXID = ReadNewTransactionId();
 Relation relation;
 TableScanDesc scan;
 HeapTuple tuple;
 Oid oldestxid_datoid;
 Oid minmulti_datoid;
 bool bogus = 0;
 bool frozenAlreadyWrapped = 0;


 oldestxid_datoid = MyDatabaseId;
 minmulti_datoid = MyDatabaseId;
 relation = table_open(DatabaseRelationId, AccessShareLock);

 scan = table_beginscan_catalog(relation, 0, ((void*)0));

 while ((tuple = heap_getnext(scan, ForwardScanDirection)) != ((void*)0))
 {
  volatile FormData_pg_database *dbform = (Form_pg_database) GETSTRUCT(tuple);
  TransactionId datfrozenxid = dbform->datfrozenxid;
  TransactionId datminmxid = dbform->datminmxid;

  Assert(TransactionIdIsNormal(datfrozenxid));
  Assert(MultiXactIdIsValid(datminmxid));
  if (TransactionIdPrecedes(lastSaneFrozenXid, datfrozenxid) ||
   MultiXactIdPrecedes(lastSaneMinMulti, datminmxid))
   bogus = 1;

  if (TransactionIdPrecedes(nextXID, datfrozenxid))
   frozenAlreadyWrapped = 1;
  else if (TransactionIdPrecedes(datfrozenxid, frozenXID))
  {
   frozenXID = datfrozenxid;
   oldestxid_datoid = dbform->oid;
  }

  if (MultiXactIdPrecedes(datminmxid, minMulti))
  {
   minMulti = datminmxid;
   minmulti_datoid = dbform->oid;
  }
 }

 table_endscan(scan);

 table_close(relation, AccessShareLock);







 if (frozenAlreadyWrapped)
 {
  ereport(WARNING,
    (errmsg("some databases have not been vacuumed in over 2 billion transactions"),
     errdetail("You might have already suffered transaction-wraparound data loss.")));
  return;
 }


 if (bogus)
  return;
 AdvanceOldestCommitTsXid(frozenXID);




 TruncateCLOG(frozenXID, oldestxid_datoid);
 TruncateCommitTs(frozenXID);
 TruncateMultiXact(minMulti, minmulti_datoid);







 SetTransactionIdLimit(frozenXID, oldestxid_datoid);
 SetMultiXactIdLimit(minMulti, minmulti_datoid, 0);
}
