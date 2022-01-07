
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TransactionId ;
typedef int Relation ;
typedef scalar_t__ MultiXactId ;


 int Assert (int) ;
 scalar_t__ FirstMultiXactId ;
 scalar_t__ FirstNormalTransactionId ;
 scalar_t__ GetOldestMultiXactId () ;
 int GetOldestXmin (int ,int ) ;
 int Min (int,int) ;
 scalar_t__ MultiXactIdPrecedes (scalar_t__,scalar_t__) ;
 int MultiXactMemberFreezeThreshold () ;
 int PROCARRAY_FLAGS_VACUUM ;
 scalar_t__ ReadNewTransactionId () ;
 scalar_t__ ReadNextMultiXactId () ;
 int TransactionIdIsNormal (scalar_t__) ;
 scalar_t__ TransactionIdLimitedForOldSnapshots (int ,int ) ;
 scalar_t__ TransactionIdPrecedes (scalar_t__,scalar_t__) ;
 int WARNING ;
 int autovacuum_freeze_max_age ;
 int ereport (int ,int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int vacuum_freeze_min_age ;
 int vacuum_freeze_table_age ;
 int vacuum_multixact_freeze_min_age ;
 int vacuum_multixact_freeze_table_age ;

void
vacuum_set_xid_limits(Relation rel,
       int freeze_min_age,
       int freeze_table_age,
       int multixact_freeze_min_age,
       int multixact_freeze_table_age,
       TransactionId *oldestXmin,
       TransactionId *freezeLimit,
       TransactionId *xidFullScanLimit,
       MultiXactId *multiXactCutoff,
       MultiXactId *mxactFullScanLimit)
{
 int freezemin;
 int mxid_freezemin;
 int effective_multixact_freeze_max_age;
 TransactionId limit;
 TransactionId safeLimit;
 MultiXactId oldestMxact;
 MultiXactId mxactLimit;
 MultiXactId safeMxactLimit;
 *oldestXmin =
  TransactionIdLimitedForOldSnapshots(GetOldestXmin(rel, PROCARRAY_FLAGS_VACUUM), rel);

 Assert(TransactionIdIsNormal(*oldestXmin));







 freezemin = freeze_min_age;
 if (freezemin < 0)
  freezemin = vacuum_freeze_min_age;
 freezemin = Min(freezemin, autovacuum_freeze_max_age / 2);
 Assert(freezemin >= 0);




 limit = *oldestXmin - freezemin;
 if (!TransactionIdIsNormal(limit))
  limit = FirstNormalTransactionId;






 safeLimit = ReadNewTransactionId() - autovacuum_freeze_max_age;
 if (!TransactionIdIsNormal(safeLimit))
  safeLimit = FirstNormalTransactionId;

 if (TransactionIdPrecedes(limit, safeLimit))
 {
  ereport(WARNING,
    (errmsg("oldest xmin is far in the past"),
     errhint("Close open transactions soon to avoid wraparound problems.\n"
       "You might also need to commit or roll back old prepared transactions, or drop stale replication slots.")));
  limit = *oldestXmin;
 }

 *freezeLimit = limit;






 effective_multixact_freeze_max_age = MultiXactMemberFreezeThreshold();







 mxid_freezemin = multixact_freeze_min_age;
 if (mxid_freezemin < 0)
  mxid_freezemin = vacuum_multixact_freeze_min_age;
 mxid_freezemin = Min(mxid_freezemin,
       effective_multixact_freeze_max_age / 2);
 Assert(mxid_freezemin >= 0);


 oldestMxact = GetOldestMultiXactId();
 mxactLimit = oldestMxact - mxid_freezemin;
 if (mxactLimit < FirstMultiXactId)
  mxactLimit = FirstMultiXactId;

 safeMxactLimit =
  ReadNextMultiXactId() - effective_multixact_freeze_max_age;
 if (safeMxactLimit < FirstMultiXactId)
  safeMxactLimit = FirstMultiXactId;

 if (MultiXactIdPrecedes(mxactLimit, safeMxactLimit))
 {
  ereport(WARNING,
    (errmsg("oldest multixact is far in the past"),
     errhint("Close open transactions with multixacts soon to avoid wraparound problems.")));

  if (MultiXactIdPrecedes(oldestMxact, safeMxactLimit))
   mxactLimit = oldestMxact;
  else
   mxactLimit = safeMxactLimit;
 }

 *multiXactCutoff = mxactLimit;

 if (xidFullScanLimit != ((void*)0))
 {
  int freezetable;

  Assert(mxactFullScanLimit != ((void*)0));
  freezetable = freeze_table_age;
  if (freezetable < 0)
   freezetable = vacuum_freeze_table_age;
  freezetable = Min(freezetable, autovacuum_freeze_max_age * 0.95);
  Assert(freezetable >= 0);





  limit = ReadNewTransactionId() - freezetable;
  if (!TransactionIdIsNormal(limit))
   limit = FirstNormalTransactionId;

  *xidFullScanLimit = limit;
  freezetable = multixact_freeze_table_age;
  if (freezetable < 0)
   freezetable = vacuum_multixact_freeze_table_age;
  freezetable = Min(freezetable,
        effective_multixact_freeze_max_age * 0.95);
  Assert(freezetable >= 0);





  mxactLimit = ReadNextMultiXactId() - freezetable;
  if (mxactLimit < FirstMultiXactId)
   mxactLimit = FirstMultiXactId;

  *mxactFullScanLimit = mxactLimit;
 }
 else
 {
  Assert(mxactFullScanLimit == ((void*)0));
 }
}
