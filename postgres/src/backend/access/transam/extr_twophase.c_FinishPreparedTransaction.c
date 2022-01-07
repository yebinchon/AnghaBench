
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int gidlen; int nsubxacts; int ncommitrels; int nabortrels; int ninvalmsgs; scalar_t__ initfileinval; int xid; } ;
typedef TYPE_1__ TwoPhaseFileHeader ;
typedef int TransactionId ;
struct TYPE_10__ {TYPE_2__* allPgXact; int * allProcs; } ;
struct TYPE_9__ {size_t pgprocno; int valid; scalar_t__ ondisk; int prepare_start_lsn; } ;
struct TYPE_8__ {int xid; } ;
typedef int SharedInvalidationMessage ;
typedef int RelFileNode ;
typedef TYPE_2__ PGXACT ;
typedef int PGPROC ;
typedef TYPE_3__* GlobalTransaction ;


 int Assert (int ) ;
 int AtEOXact_PgStat (int,int) ;
 int DropRelationFiles (int *,int,int) ;
 int GetUserId () ;
 int HOLD_INTERRUPTS () ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_3__* LockGXact (char const*,int ) ;
 int MAXALIGN (int) ;
 int * MyLockedGxact ;
 int PredicateLockTwoPhaseFinish (int ,int) ;
 int ProcArrayRemove (int *,int ) ;
 TYPE_5__* ProcGlobal ;
 int ProcessRecords (char*,int ,int ) ;
 int RESUME_INTERRUPTS () ;
 char* ReadTwoPhaseFile (int ,int) ;
 int RecordTransactionAbortPrepared (int ,int,int *,int,int *,char const*) ;
 int RecordTransactionCommitPrepared (int ,int,int *,int,int *,int,int *,scalar_t__,char const*) ;
 int RelationCacheInitFilePostInvalidate () ;
 int RelationCacheInitFilePreInvalidate () ;
 int RemoveGXact (TYPE_3__*) ;
 int RemoveTwoPhaseFile (int ,int) ;
 int SendSharedInvalidMessages (int *,int) ;
 int TransactionIdEquals (int ,int ) ;
 int TransactionIdLatest (int ,int,int *) ;
 int TwoPhaseStateLock ;
 int XlogReadTwoPhaseData (int ,char**,int *) ;
 int pfree (char*) ;
 int twophase_postabort_callbacks ;
 int twophase_postcommit_callbacks ;

void
FinishPreparedTransaction(const char *gid, bool isCommit)
{
 GlobalTransaction gxact;
 PGPROC *proc;
 PGXACT *pgxact;
 TransactionId xid;
 char *buf;
 char *bufptr;
 TwoPhaseFileHeader *hdr;
 TransactionId latestXid;
 TransactionId *children;
 RelFileNode *commitrels;
 RelFileNode *abortrels;
 RelFileNode *delrels;
 int ndelrels;
 SharedInvalidationMessage *invalmsgs;





 gxact = LockGXact(gid, GetUserId());
 proc = &ProcGlobal->allProcs[gxact->pgprocno];
 pgxact = &ProcGlobal->allPgXact[gxact->pgprocno];
 xid = pgxact->xid;






 if (gxact->ondisk)
  buf = ReadTwoPhaseFile(xid, 0);
 else
  XlogReadTwoPhaseData(gxact->prepare_start_lsn, &buf, ((void*)0));





 hdr = (TwoPhaseFileHeader *) buf;
 Assert(TransactionIdEquals(hdr->xid, xid));
 bufptr = buf + MAXALIGN(sizeof(TwoPhaseFileHeader));
 bufptr += MAXALIGN(hdr->gidlen);
 children = (TransactionId *) bufptr;
 bufptr += MAXALIGN(hdr->nsubxacts * sizeof(TransactionId));
 commitrels = (RelFileNode *) bufptr;
 bufptr += MAXALIGN(hdr->ncommitrels * sizeof(RelFileNode));
 abortrels = (RelFileNode *) bufptr;
 bufptr += MAXALIGN(hdr->nabortrels * sizeof(RelFileNode));
 invalmsgs = (SharedInvalidationMessage *) bufptr;
 bufptr += MAXALIGN(hdr->ninvalmsgs * sizeof(SharedInvalidationMessage));


 latestXid = TransactionIdLatest(xid, hdr->nsubxacts, children);


 HOLD_INTERRUPTS();
 if (isCommit)
  RecordTransactionCommitPrepared(xid,
          hdr->nsubxacts, children,
          hdr->ncommitrels, commitrels,
          hdr->ninvalmsgs, invalmsgs,
          hdr->initfileinval, gid);
 else
  RecordTransactionAbortPrepared(xid,
            hdr->nsubxacts, children,
            hdr->nabortrels, abortrels,
            gid);

 ProcArrayRemove(proc, latestXid);
 gxact->valid = 0;
 if (isCommit)
 {
  delrels = commitrels;
  ndelrels = hdr->ncommitrels;
 }
 else
 {
  delrels = abortrels;
  ndelrels = hdr->nabortrels;
 }


 DropRelationFiles(delrels, ndelrels, 0);







 if (hdr->initfileinval)
  RelationCacheInitFilePreInvalidate();
 SendSharedInvalidMessages(invalmsgs, hdr->ninvalmsgs);
 if (hdr->initfileinval)
  RelationCacheInitFilePostInvalidate();







 LWLockAcquire(TwoPhaseStateLock, LW_EXCLUSIVE);


 if (isCommit)
  ProcessRecords(bufptr, xid, twophase_postcommit_callbacks);
 else
  ProcessRecords(bufptr, xid, twophase_postabort_callbacks);

 PredicateLockTwoPhaseFinish(xid, isCommit);


 RemoveGXact(gxact);





 LWLockRelease(TwoPhaseStateLock);


 AtEOXact_PgStat(isCommit, 0);




 if (gxact->ondisk)
  RemoveTwoPhaseFile(xid, 1);

 MyLockedGxact = ((void*)0);

 RESUME_INTERRUPTS();

 pfree(buf);
}
