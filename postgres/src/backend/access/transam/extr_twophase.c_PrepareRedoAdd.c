
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* XLogRecPtr ;
struct TYPE_4__ {int origin_lsn; int owner; int xid; int prepared_at; } ;
typedef TYPE_1__ TwoPhaseFileHeader ;
struct TYPE_6__ {scalar_t__ numPrepXacts; TYPE_2__** prepXacts; TYPE_2__* freeGXacts; } ;
struct TYPE_5__ {int valid; int inredo; int xid; int gid; int ondisk; int locking_backend; int owner; void* prepare_end_lsn; void* prepare_start_lsn; int prepared_at; struct TYPE_5__* next; } ;
typedef scalar_t__ RepOriginId ;
typedef TYPE_2__* GlobalTransaction ;


 int Assert (int) ;
 int DEBUG2 ;
 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 int InvalidBackendId ;
 scalar_t__ InvalidRepOriginId ;
 int LWLockHeldByMeInMode (int ,int ) ;
 int LW_EXCLUSIVE ;
 int MAXALIGN (int) ;
 int RecoveryInProgress () ;
 TYPE_3__* TwoPhaseState ;
 int TwoPhaseStateLock ;
 int XLogRecPtrIsInvalid (void*) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*,scalar_t__) ;
 int errmsg (char*) ;
 scalar_t__ max_prepared_xacts ;
 int replorigin_advance (scalar_t__,int ,void*,int,int) ;
 int strcpy (int ,char const*) ;

void
PrepareRedoAdd(char *buf, XLogRecPtr start_lsn,
      XLogRecPtr end_lsn, RepOriginId origin_id)
{
 TwoPhaseFileHeader *hdr = (TwoPhaseFileHeader *) buf;
 char *bufptr;
 const char *gid;
 GlobalTransaction gxact;

 Assert(LWLockHeldByMeInMode(TwoPhaseStateLock, LW_EXCLUSIVE));
 Assert(RecoveryInProgress());

 bufptr = buf + MAXALIGN(sizeof(TwoPhaseFileHeader));
 gid = (const char *) bufptr;
 if (TwoPhaseState->freeGXacts == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_OUT_OF_MEMORY),
     errmsg("maximum number of prepared transactions reached"),
     errhint("Increase max_prepared_transactions (currently %d).",
       max_prepared_xacts)));
 gxact = TwoPhaseState->freeGXacts;
 TwoPhaseState->freeGXacts = gxact->next;

 gxact->prepared_at = hdr->prepared_at;
 gxact->prepare_start_lsn = start_lsn;
 gxact->prepare_end_lsn = end_lsn;
 gxact->xid = hdr->xid;
 gxact->owner = hdr->owner;
 gxact->locking_backend = InvalidBackendId;
 gxact->valid = 0;
 gxact->ondisk = XLogRecPtrIsInvalid(start_lsn);
 gxact->inredo = 1;
 strcpy(gxact->gid, gid);


 Assert(TwoPhaseState->numPrepXacts < max_prepared_xacts);
 TwoPhaseState->prepXacts[TwoPhaseState->numPrepXacts++] = gxact;

 if (origin_id != InvalidRepOriginId)
 {

  replorigin_advance(origin_id, hdr->origin_lsn, end_lsn,
         0 , 0 );
 }

 elog(DEBUG2, "added 2PC data in shared memory for transaction %u", gxact->xid);
}
