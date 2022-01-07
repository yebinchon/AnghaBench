
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int XLogRecord ;
typedef scalar_t__ XLogRecPtr ;
struct TYPE_9__ {scalar_t__ restart_lsn; scalar_t__ confirmed_flush; } ;
struct TYPE_12__ {TYPE_1__ data; } ;
struct TYPE_11__ {scalar_t__ EndRecPtr; } ;
struct TYPE_10__ {TYPE_3__* reader; } ;
typedef int ResourceOwner ;
typedef TYPE_2__ LogicalDecodingContext ;


 int CHECK_FOR_INTERRUPTS () ;
 TYPE_2__* CreateDecodingContext (scalar_t__,int ,int,int ,int *,int *,int *) ;
 int CurrentResourceOwner ;
 int ERROR ;
 int FreeDecodingContext (TYPE_2__*) ;
 scalar_t__ InvalidXLogRecPtr ;
 int InvalidateSystemCaches () ;
 int LogicalConfirmReceivedLocation (scalar_t__) ;
 int LogicalDecodingProcessRecord (TYPE_2__*,TYPE_3__*) ;
 TYPE_4__* MyReplicationSlot ;
 int NIL ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_RE_THROW () ;
 int PG_TRY () ;
 int ReplicationSlotMarkDirty () ;
 int * XLogReadRecord (TYPE_3__*,scalar_t__,char**) ;
 int XLogRecPtrIsInvalid (scalar_t__) ;
 int elog (int ,char*,char*) ;
 int logical_read_local_xlog_page ;

__attribute__((used)) static XLogRecPtr
pg_logical_replication_slot_advance(XLogRecPtr moveto)
{
 LogicalDecodingContext *ctx;
 ResourceOwner old_resowner = CurrentResourceOwner;
 XLogRecPtr startlsn;
 XLogRecPtr retlsn;

 PG_TRY();
 {





  ctx = CreateDecodingContext(InvalidXLogRecPtr,
         NIL,
         1,
         logical_read_local_xlog_page,
         ((void*)0), ((void*)0), ((void*)0));





  startlsn = MyReplicationSlot->data.restart_lsn;


  retlsn = MyReplicationSlot->data.confirmed_flush;


  InvalidateSystemCaches();


  while ((!XLogRecPtrIsInvalid(startlsn) &&
    startlsn < moveto) ||
      (!XLogRecPtrIsInvalid(ctx->reader->EndRecPtr) &&
    ctx->reader->EndRecPtr < moveto))
  {
   char *errm = ((void*)0);
   XLogRecord *record;





   record = XLogReadRecord(ctx->reader, startlsn, &errm);
   if (errm)
    elog(ERROR, "%s", errm);


   startlsn = InvalidXLogRecPtr;






   if (record)
    LogicalDecodingProcessRecord(ctx, ctx->reader);


   if (moveto <= ctx->reader->EndRecPtr)
    break;

   CHECK_FOR_INTERRUPTS();
  }






  CurrentResourceOwner = old_resowner;

  if (ctx->reader->EndRecPtr != InvalidXLogRecPtr)
  {
   LogicalConfirmReceivedLocation(moveto);
   ReplicationSlotMarkDirty();
  }

  retlsn = MyReplicationSlot->data.confirmed_flush;


  FreeDecodingContext(ctx);

  InvalidateSystemCaches();
 }
 PG_CATCH();
 {

  InvalidateSystemCaches();

  PG_RE_THROW();
 }
 PG_END_TRY();

 return retlsn;
}
