
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int gidlen; int nsubxacts; int ncommitrels; int nabortrels; int ninvalmsgs; int database; int owner; int prepared_at; int xid; } ;
typedef TYPE_1__ TwoPhaseFileHeader ;
typedef int TransactionId ;
struct TYPE_9__ {int numPrepXacts; TYPE_2__** prepXacts; } ;
struct TYPE_8__ {int inredo; int ondisk; int prepare_start_lsn; int xid; } ;
typedef int SharedInvalidationMessage ;
typedef int RelFileNode ;
typedef TYPE_2__* GlobalTransaction ;


 int Assert (int ) ;
 int GXactLoadSubxactData (TYPE_2__*,int,int *) ;
 scalar_t__ InHotStandby ;
 int LOG ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int MAXALIGN (int) ;
 int MarkAsPrepared (TYPE_2__*,int) ;
 int MarkAsPreparingGuts (TYPE_2__*,int ,char const*,int ,int ,int ) ;
 int PostPrepare_Twophase () ;
 int ProcessRecords (char*,int ,int ) ;
 char* ProcessTwoPhaseBuffer (int ,int ,int ,int,int) ;
 int StandbyReleaseLockTree (int ,int,int *) ;
 int TransactionIdEquals (int ,int ) ;
 TYPE_3__* TwoPhaseState ;
 int TwoPhaseStateLock ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ) ;
 int pfree (char*) ;
 int twophase_recover_callbacks ;

void
RecoverPreparedTransactions(void)
{
 int i;

 LWLockAcquire(TwoPhaseStateLock, LW_EXCLUSIVE);
 for (i = 0; i < TwoPhaseState->numPrepXacts; i++)
 {
  TransactionId xid;
  char *buf;
  GlobalTransaction gxact = TwoPhaseState->prepXacts[i];
  char *bufptr;
  TwoPhaseFileHeader *hdr;
  TransactionId *subxids;
  const char *gid;

  xid = gxact->xid;
  buf = ProcessTwoPhaseBuffer(xid,
         gxact->prepare_start_lsn,
         gxact->ondisk, 1, 0);
  if (buf == ((void*)0))
   continue;

  ereport(LOG,
    (errmsg("recovering prepared transaction %u from shared memory", xid)));

  hdr = (TwoPhaseFileHeader *) buf;
  Assert(TransactionIdEquals(hdr->xid, xid));
  bufptr = buf + MAXALIGN(sizeof(TwoPhaseFileHeader));
  gid = (const char *) bufptr;
  bufptr += MAXALIGN(hdr->gidlen);
  subxids = (TransactionId *) bufptr;
  bufptr += MAXALIGN(hdr->nsubxacts * sizeof(TransactionId));
  bufptr += MAXALIGN(hdr->ncommitrels * sizeof(RelFileNode));
  bufptr += MAXALIGN(hdr->nabortrels * sizeof(RelFileNode));
  bufptr += MAXALIGN(hdr->ninvalmsgs * sizeof(SharedInvalidationMessage));





  MarkAsPreparingGuts(gxact, xid, gid,
       hdr->prepared_at,
       hdr->owner, hdr->database);


  gxact->inredo = 0;

  GXactLoadSubxactData(gxact, hdr->nsubxacts, subxids);
  MarkAsPrepared(gxact, 1);

  LWLockRelease(TwoPhaseStateLock);




  ProcessRecords(bufptr, xid, twophase_recover_callbacks);






  if (InHotStandby)
   StandbyReleaseLockTree(xid, hdr->nsubxacts, subxids);





  PostPrepare_Twophase();

  pfree(buf);

  LWLockAcquire(TwoPhaseStateLock, LW_EXCLUSIVE);
 }

 LWLockRelease(TwoPhaseStateLock);
}
