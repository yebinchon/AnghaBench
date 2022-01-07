
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int XLogRecPtr ;
typedef int TimestampTz ;
struct TYPE_9__ {int stop_socket; int standby_message_timeout; TYPE_1__* walmethod; scalar_t__ synchronous; int startpos; } ;
struct TYPE_8__ {scalar_t__ (* sync ) (int *) ;int (* getlasterror ) () ;} ;
typedef TYPE_2__ StreamCtl ;
typedef int PGresult ;
typedef int PGconn ;


 long CalculateCopyStreamSleeptime (int,int ,int) ;
 int CheckCopyStreamStop (int *,TYPE_2__*,int ,int *) ;
 int CopyStreamReceive (int *,long,int ,char**) ;
 int * HandleEndOfCopyStream (int *,TYPE_2__*,char*,int ,int *) ;
 int PQfreemem (char*) ;
 int ProcessKeepaliveMsg (int *,TYPE_2__*,char*,int,int ,int*) ;
 int ProcessXLogDataMsg (int *,TYPE_2__*,char*,int,int *) ;
 int current_walfile_name ;
 int exit (int) ;
 int feGetCurrentTimestamp () ;
 scalar_t__ feTimestampDifferenceExceeds (int,int,int ) ;
 int lastFlushPosition ;
 int pg_log_error (char*,char) ;
 int pg_log_fatal (char*,int ,int ) ;
 int sendFeedback (int *,int ,int,int) ;
 int still_sending ;
 scalar_t__ stub1 (int *) ;
 int stub2 () ;
 int * walfile ;

__attribute__((used)) static PGresult *
HandleCopyStream(PGconn *conn, StreamCtl *stream,
     XLogRecPtr *stoppos)
{
 char *copybuf = ((void*)0);
 TimestampTz last_status = -1;
 XLogRecPtr blockpos = stream->startpos;

 still_sending = 1;

 while (1)
 {
  int r;
  TimestampTz now;
  long sleeptime;




  if (!CheckCopyStreamStop(conn, stream, blockpos, stoppos))
   goto error;

  now = feGetCurrentTimestamp();





  if (stream->synchronous && lastFlushPosition < blockpos && walfile != ((void*)0))
  {
   if (stream->walmethod->sync(walfile) != 0)
   {
    pg_log_fatal("could not fsync file \"%s\": %s",
        current_walfile_name, stream->walmethod->getlasterror());
    exit(1);
   }
   lastFlushPosition = blockpos;





   if (!sendFeedback(conn, blockpos, now, 0))
    goto error;
   last_status = now;
  }




  if (still_sending && stream->standby_message_timeout > 0 &&
   feTimestampDifferenceExceeds(last_status, now,
           stream->standby_message_timeout))
  {

   if (!sendFeedback(conn, blockpos, now, 0))
    goto error;
   last_status = now;
  }




  sleeptime = CalculateCopyStreamSleeptime(now, stream->standby_message_timeout,
             last_status);

  r = CopyStreamReceive(conn, sleeptime, stream->stop_socket, &copybuf);
  while (r != 0)
  {
   if (r == -1)
    goto error;
   if (r == -2)
   {
    PGresult *res = HandleEndOfCopyStream(conn, stream, copybuf, blockpos, stoppos);

    if (res == ((void*)0))
     goto error;
    else
     return res;
   }


   if (copybuf[0] == 'k')
   {
    if (!ProcessKeepaliveMsg(conn, stream, copybuf, r, blockpos,
           &last_status))
     goto error;
   }
   else if (copybuf[0] == 'w')
   {
    if (!ProcessXLogDataMsg(conn, stream, copybuf, r, &blockpos))
     goto error;





    if (!CheckCopyStreamStop(conn, stream, blockpos, stoppos))
     goto error;
   }
   else
   {
    pg_log_error("unrecognized streaming header: \"%c\"",
        copybuf[0]);
    goto error;
   }





   r = CopyStreamReceive(conn, 0, stream->stop_socket, &copybuf);
  }
 }

error:
 if (copybuf != ((void*)0))
  PQfreemem(copybuf);
 return ((void*)0);
}
