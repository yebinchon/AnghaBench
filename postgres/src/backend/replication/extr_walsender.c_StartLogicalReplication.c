
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int restart_lsn; int confirmed_flush; } ;
struct TYPE_9__ {TYPE_1__ data; } ;
struct TYPE_8__ {int mutex; int sentPtr; } ;
struct TYPE_7__ {int options; int startpoint; int slotname; } ;
typedef int StringInfoData ;
typedef TYPE_2__ StartReplicationCmd ;


 int Assert (int) ;
 int CheckLogicalDecodingRequirements () ;
 int CreateDecodingContext (int ,int ,int,int ,int ,int ,int ) ;
 int DestRemote ;
 int EndCommand (char*,int ) ;
 int FreeDecodingContext (int ) ;
 int LOG ;
 TYPE_5__* MyReplicationSlot ;
 TYPE_4__* MyWalSnd ;
 int RecoveryInProgress () ;
 int ReplicationSlotAcquire (int ,int) ;
 int ReplicationSlotRelease () ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int SyncRepInitConfig () ;
 int WALSNDSTATE_CATCHUP ;
 int WALSNDSTATE_STARTUP ;
 int WalSndLoop (int ) ;
 int WalSndPrepareWrite ;
 int WalSndSetState (int ) ;
 int WalSndUpdateProgress ;
 int WalSndWriteData ;
 int XLogSendLogical ;
 scalar_t__ am_cascading_walsender ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;
 int got_STOPPING ;
 int logical_decoding_ctx ;
 int logical_read_xlog_page ;
 int logical_startptr ;
 int pq_beginmessage (int *,char) ;
 int pq_endmessage (int *) ;
 int pq_flush () ;
 int pq_sendbyte (int *,int ) ;
 int pq_sendint16 (int *,int ) ;
 int proc_exit (int ) ;
 int replication_active ;
 int sentPtr ;

__attribute__((used)) static void
StartLogicalReplication(StartReplicationCmd *cmd)
{
 StringInfoData buf;


 CheckLogicalDecodingRequirements();

 Assert(!MyReplicationSlot);

 ReplicationSlotAcquire(cmd->slotname, 1);






 if (am_cascading_walsender && !RecoveryInProgress())
 {
  ereport(LOG,
    (errmsg("terminating walsender process after promotion")));
  got_STOPPING = 1;
 }
 logical_decoding_ctx =
  CreateDecodingContext(cmd->startpoint, cmd->options, 0,
         logical_read_xlog_page,
         WalSndPrepareWrite, WalSndWriteData,
         WalSndUpdateProgress);


 WalSndSetState(WALSNDSTATE_CATCHUP);


 pq_beginmessage(&buf, 'W');
 pq_sendbyte(&buf, 0);
 pq_sendint16(&buf, 0);
 pq_endmessage(&buf);
 pq_flush();



 logical_startptr = MyReplicationSlot->data.restart_lsn;





 sentPtr = MyReplicationSlot->data.confirmed_flush;


 SpinLockAcquire(&MyWalSnd->mutex);
 MyWalSnd->sentPtr = MyReplicationSlot->data.restart_lsn;
 SpinLockRelease(&MyWalSnd->mutex);

 replication_active = 1;

 SyncRepInitConfig();


 WalSndLoop(XLogSendLogical);

 FreeDecodingContext(logical_decoding_ctx);
 ReplicationSlotRelease();

 replication_active = 0;
 if (got_STOPPING)
  proc_exit(0);
 WalSndSetState(WALSNDSTATE_STARTUP);


 EndCommand("COPY 0", DestRemote);
}
