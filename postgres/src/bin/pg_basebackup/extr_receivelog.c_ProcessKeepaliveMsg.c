
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ XLogRecPtr ;
typedef int TimestampTz ;
struct TYPE_5__ {TYPE_1__* walmethod; } ;
struct TYPE_4__ {scalar_t__ (* sync ) (int *) ;int (* getlasterror ) () ;} ;
typedef TYPE_2__ StreamCtl ;
typedef int PGconn ;


 int current_walfile_name ;
 int exit (int) ;
 int feGetCurrentTimestamp () ;
 scalar_t__ lastFlushPosition ;
 int pg_log_error (char*,int) ;
 int pg_log_fatal (char*,int ,int ) ;
 scalar_t__ reportFlushPosition ;
 int sendFeedback (int *,scalar_t__,int ,int) ;
 scalar_t__ still_sending ;
 scalar_t__ stub1 (int *) ;
 int stub2 () ;
 int * walfile ;

__attribute__((used)) static bool
ProcessKeepaliveMsg(PGconn *conn, StreamCtl *stream, char *copybuf, int len,
     XLogRecPtr blockpos, TimestampTz *last_status)
{
 int pos;
 bool replyRequested;
 TimestampTz now;





 pos = 1;
 pos += 8;
 pos += 8;

 if (len < pos + 1)
 {
  pg_log_error("streaming header too small: %d", len);
  return 0;
 }
 replyRequested = copybuf[pos];


 if (replyRequested && still_sending)
 {
  if (reportFlushPosition && lastFlushPosition < blockpos &&
   walfile != ((void*)0))
  {







   if (stream->walmethod->sync(walfile) != 0)
   {
    pg_log_fatal("could not fsync file \"%s\": %s",
        current_walfile_name, stream->walmethod->getlasterror());
    exit(1);
   }
   lastFlushPosition = blockpos;
  }

  now = feGetCurrentTimestamp();
  if (!sendFeedback(conn, blockpos, now, 0))
   return 0;
  *last_status = now;
 }

 return 1;
}
