
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pg_time_t ;
typedef scalar_t__ XLogRecPtr ;
struct TYPE_3__ {scalar_t__ walRcvState; char* conninfo; char* slotname; scalar_t__ receiveStart; scalar_t__ receivedTLI; int mutex; int * latch; scalar_t__ receiveStartTLI; scalar_t__ latestChunkStart; scalar_t__ receivedUpto; int startTime; } ;
typedef TYPE_1__ WalRcvData ;
typedef scalar_t__ TimeLineID ;
typedef int Latch ;


 int Assert (int) ;
 int MAXCONNINFO ;
 int NAMEDATALEN ;
 int PMSIGNAL_START_WALRECEIVER ;
 int SendPostmasterSignal (int ) ;
 int SetLatch (int *) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 scalar_t__ WALRCV_RESTARTING ;
 scalar_t__ WALRCV_STARTING ;
 scalar_t__ WALRCV_STOPPED ;
 scalar_t__ WALRCV_WAITING ;
 TYPE_1__* WalRcv ;
 scalar_t__ XLogSegmentOffset (scalar_t__,int ) ;
 int strlcpy (char*,char const*,int ) ;
 int time (int *) ;
 int wal_segment_size ;

void
RequestXLogStreaming(TimeLineID tli, XLogRecPtr recptr, const char *conninfo,
      const char *slotname)
{
 WalRcvData *walrcv = WalRcv;
 bool launch = 0;
 pg_time_t now = (pg_time_t) time(((void*)0));
 Latch *latch;







 if (XLogSegmentOffset(recptr, wal_segment_size) != 0)
  recptr -= XLogSegmentOffset(recptr, wal_segment_size);

 SpinLockAcquire(&walrcv->mutex);


 Assert(walrcv->walRcvState == WALRCV_STOPPED ||
     walrcv->walRcvState == WALRCV_WAITING);

 if (conninfo != ((void*)0))
  strlcpy((char *) walrcv->conninfo, conninfo, MAXCONNINFO);
 else
  walrcv->conninfo[0] = '\0';

 if (slotname != ((void*)0))
  strlcpy((char *) walrcv->slotname, slotname, NAMEDATALEN);
 else
  walrcv->slotname[0] = '\0';

 if (walrcv->walRcvState == WALRCV_STOPPED)
 {
  launch = 1;
  walrcv->walRcvState = WALRCV_STARTING;
 }
 else
  walrcv->walRcvState = WALRCV_RESTARTING;
 walrcv->startTime = now;





 if (walrcv->receiveStart == 0 || walrcv->receivedTLI != tli)
 {
  walrcv->receivedUpto = recptr;
  walrcv->receivedTLI = tli;
  walrcv->latestChunkStart = recptr;
 }
 walrcv->receiveStart = recptr;
 walrcv->receiveStartTLI = tli;

 latch = walrcv->latch;

 SpinLockRelease(&walrcv->mutex);

 if (launch)
  SendPostmasterSignal(PMSIGNAL_START_WALRECEIVER);
 else if (latch)
  SetLatch(latch);
}
