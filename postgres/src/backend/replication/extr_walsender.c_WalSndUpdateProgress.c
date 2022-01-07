
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLogRecPtr ;
typedef int TransactionId ;
typedef int TimestampTz ;
typedef int LogicalDecodingContext ;


 int GetCurrentTimestamp () ;
 int LagTrackerWrite (int ,int ) ;
 int TimestampDifferenceExceeds (int ,int ,int ) ;
 int WALSND_LOGICAL_LAG_TRACK_INTERVAL_MS ;

__attribute__((used)) static void
WalSndUpdateProgress(LogicalDecodingContext *ctx, XLogRecPtr lsn, TransactionId xid)
{
 static TimestampTz sendTime = 0;
 TimestampTz now = GetCurrentTimestamp();






 if (!TimestampDifferenceExceeds(sendTime, now,
         1000))
  return;

 LagTrackerWrite(lsn, now);
 sendTime = now;
}
