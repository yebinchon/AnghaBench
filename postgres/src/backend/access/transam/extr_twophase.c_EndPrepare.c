
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int pg_crc32c ;
struct TYPE_9__ {scalar_t__ magic; scalar_t__ total_len; scalar_t__ origin_timestamp; scalar_t__ origin_lsn; } ;
typedef TYPE_1__ TwoPhaseFileHeader ;
struct TYPE_13__ {int delayChkpt; } ;
struct TYPE_12__ {scalar_t__ total_len; scalar_t__ num_chunks; TYPE_2__* head; int tail; } ;
struct TYPE_11__ {int prepare_end_lsn; int prepare_start_lsn; } ;
struct TYPE_10__ {int len; scalar_t__ data; struct TYPE_10__* next; } ;
typedef TYPE_2__ StateFileChunk ;
typedef TYPE_3__* GlobalTransaction ;


 int Assert (int) ;
 scalar_t__ DoNotReplicateId ;
 int END_CRIT_SECTION () ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 scalar_t__ InvalidRepOriginId ;
 scalar_t__ InvalidXLogRecPtr ;
 int MarkAsPrepared (TYPE_3__*,int) ;
 scalar_t__ MaxAllocSize ;
 TYPE_3__* MyLockedGxact ;
 TYPE_5__* MyPgXact ;
 int ProcLastRecPtr ;
 int RM_XACT_ID ;
 int RegisterTwoPhaseRecord (int ,int ,int *,int ) ;
 int START_CRIT_SECTION () ;
 int SyncRepWaitForLSN (int ,int) ;
 scalar_t__ TWOPHASE_MAGIC ;
 int TWOPHASE_RM_END_ID ;
 int XLOG_INCLUDE_ORIGIN ;
 int XLOG_XACT_PREPARE ;
 int XLogBeginInsert () ;
 int XLogEnsureRecordSpace (int ,scalar_t__) ;
 int XLogFlush (int ) ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterData (scalar_t__,int ) ;
 int XLogSetRecordFlags (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 TYPE_4__ records ;
 int replorigin_session_advance (scalar_t__,int ) ;
 scalar_t__ replorigin_session_origin ;
 scalar_t__ replorigin_session_origin_lsn ;
 scalar_t__ replorigin_session_origin_timestamp ;

void
EndPrepare(GlobalTransaction gxact)
{
 TwoPhaseFileHeader *hdr;
 StateFileChunk *record;
 bool replorigin;


 RegisterTwoPhaseRecord(TWOPHASE_RM_END_ID, 0,
         ((void*)0), 0);


 hdr = (TwoPhaseFileHeader *) records.head->data;
 Assert(hdr->magic == TWOPHASE_MAGIC);
 hdr->total_len = records.total_len + sizeof(pg_crc32c);

 replorigin = (replorigin_session_origin != InvalidRepOriginId &&
      replorigin_session_origin != DoNotReplicateId);

 if (replorigin)
 {
  Assert(replorigin_session_origin_lsn != InvalidXLogRecPtr);
  hdr->origin_lsn = replorigin_session_origin_lsn;
  hdr->origin_timestamp = replorigin_session_origin_timestamp;
 }
 else
 {
  hdr->origin_lsn = InvalidXLogRecPtr;
  hdr->origin_timestamp = 0;
 }






 if (hdr->total_len > MaxAllocSize)
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("two-phase state file maximum length exceeded")));
 XLogEnsureRecordSpace(0, records.num_chunks);

 START_CRIT_SECTION();

 MyPgXact->delayChkpt = 1;

 XLogBeginInsert();
 for (record = records.head; record != ((void*)0); record = record->next)
  XLogRegisterData(record->data, record->len);

 XLogSetRecordFlags(XLOG_INCLUDE_ORIGIN);

 gxact->prepare_end_lsn = XLogInsert(RM_XACT_ID, XLOG_XACT_PREPARE);

 if (replorigin)
 {

  replorigin_session_advance(replorigin_session_origin_lsn,
           gxact->prepare_end_lsn);
 }

 XLogFlush(gxact->prepare_end_lsn);




 gxact->prepare_start_lsn = ProcLastRecPtr;
 MarkAsPrepared(gxact, 0);






 MyPgXact->delayChkpt = 0;






 MyLockedGxact = gxact;

 END_CRIT_SECTION();







 SyncRepWaitForLSN(gxact->prepare_end_lsn, 0);

 records.tail = records.head = ((void*)0);
 records.num_chunks = 0;
}
