
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLogRecPtr ;
typedef int TimestampTz ;
typedef int PGconn ;


 int InvalidXLogRecPtr ;
 int PQerrorMessage (int *) ;
 scalar_t__ PQflush (int *) ;
 scalar_t__ PQputCopyData (int *,char*,int) ;
 int fe_sendint64 (int ,char*) ;
 int lastFlushPosition ;
 int pg_log_error (char*,int ) ;
 scalar_t__ reportFlushPosition ;

__attribute__((used)) static bool
sendFeedback(PGconn *conn, XLogRecPtr blockpos, TimestampTz now, bool replyRequested)
{
 char replybuf[1 + 8 + 8 + 8 + 8 + 1];
 int len = 0;

 replybuf[len] = 'r';
 len += 1;
 fe_sendint64(blockpos, &replybuf[len]);
 len += 8;
 if (reportFlushPosition)
  fe_sendint64(lastFlushPosition, &replybuf[len]);
 else
  fe_sendint64(InvalidXLogRecPtr, &replybuf[len]);
 len += 8;
 fe_sendint64(InvalidXLogRecPtr, &replybuf[len]);
 len += 8;
 fe_sendint64(now, &replybuf[len]);
 len += 8;
 replybuf[len] = replyRequested ? 1 : 0;
 len += 1;

 if (PQputCopyData(conn, replybuf, len) <= 0 || PQflush(conn))
 {
  pg_log_error("could not send feedback packet: %s",
      PQerrorMessage(conn));
  return 0;
 }

 return 1;
}
