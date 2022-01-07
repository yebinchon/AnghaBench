
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32 ;
typedef int XLogRecPtr ;
typedef int TimestampTz ;
struct TYPE_7__ {int Write; int Flush; } ;
struct TYPE_6__ {int len; int data; } ;


 int DEBUG2 ;
 int GetCurrentTimestamp () ;
 int GetXLogReplayRecPtr (int *) ;
 TYPE_5__ LogstreamResult ;
 int TimestampDifferenceExceeds (int,int,int) ;
 int elog (int ,char*,int ,int ,int ,int ,int ,int ,char*) ;
 int pq_sendbyte (TYPE_1__*,int) ;
 int pq_sendint64 (TYPE_1__*,int) ;
 TYPE_1__ reply_message ;
 int resetStringInfo (TYPE_1__*) ;
 int wal_receiver_status_interval ;
 int walrcv_send (int ,int ,int ) ;
 int wrconn ;

__attribute__((used)) static void
XLogWalRcvSendReply(bool force, bool requestReply)
{
 static XLogRecPtr writePtr = 0;
 static XLogRecPtr flushPtr = 0;
 XLogRecPtr applyPtr;
 static TimestampTz sendTime = 0;
 TimestampTz now;





 if (!force && wal_receiver_status_interval <= 0)
  return;


 now = GetCurrentTimestamp();
 if (!force
  && writePtr == LogstreamResult.Write
  && flushPtr == LogstreamResult.Flush
  && !TimestampDifferenceExceeds(sendTime, now,
            wal_receiver_status_interval * 1000))
  return;
 sendTime = now;


 writePtr = LogstreamResult.Write;
 flushPtr = LogstreamResult.Flush;
 applyPtr = GetXLogReplayRecPtr(((void*)0));

 resetStringInfo(&reply_message);
 pq_sendbyte(&reply_message, 'r');
 pq_sendint64(&reply_message, writePtr);
 pq_sendint64(&reply_message, flushPtr);
 pq_sendint64(&reply_message, applyPtr);
 pq_sendint64(&reply_message, GetCurrentTimestamp());
 pq_sendbyte(&reply_message, requestReply ? 1 : 0);


 elog(DEBUG2, "sending write %X/%X flush %X/%X apply %X/%X%s",
   (uint32) (writePtr >> 32), (uint32) writePtr,
   (uint32) (flushPtr >> 32), (uint32) flushPtr,
   (uint32) (applyPtr >> 32), (uint32) applyPtr,
   requestReply ? " (reply requested)" : "");

 walrcv_send(wrconn, reply_message.data, reply_message.len);
}
