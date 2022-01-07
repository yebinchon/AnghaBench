
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32 ;
struct timeval {int tv_sec; int tv_usec; } ;
struct stat {int st_mode; } ;
typedef int int64 ;
typedef int fd_set ;
typedef scalar_t__ XLogRecPtr ;
typedef scalar_t__ TimestampTz ;
struct TYPE_8__ {int data; } ;
typedef TYPE_1__* PQExpBuffer ;
typedef int PGresult ;


 scalar_t__ EINTR ;
 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 int * GetConnection () ;
 scalar_t__ InvalidXLogRecPtr ;
 scalar_t__ Max (scalar_t__,scalar_t__) ;
 int O_APPEND ;
 int O_CREAT ;
 int O_WRONLY ;
 int OutputFsync (scalar_t__) ;
 scalar_t__ PGRES_COMMAND_OK ;
 scalar_t__ PGRES_COPY_BOTH ;
 scalar_t__ PGRES_COPY_OUT ;
 int PG_BINARY ;
 int PQclear (int *) ;
 scalar_t__ PQconsumeInput (int *) ;
 int PQerrorMessage (int *) ;
 int * PQexec (int *,int ) ;
 int PQfinish (int *) ;
 int PQfreemem (char*) ;
 int PQgetCopyData (int *,char**,int) ;
 int * PQgetResult (int *) ;
 int PQresultErrorMessage (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 scalar_t__ PQsocket (int *) ;
 int S_IRUSR ;
 scalar_t__ S_ISREG (int ) ;
 int S_IWUSR ;
 int appendPQExpBuffer (TYPE_1__*,char*,int *,...) ;
 int appendPQExpBufferChar (TYPE_1__*,char) ;
 int appendPQExpBufferStr (TYPE_1__*,char*) ;
 scalar_t__ close (int) ;
 int * conn ;
 TYPE_1__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_1__*) ;
 scalar_t__ endpos ;
 scalar_t__ errno ;
 scalar_t__ feGetCurrentTimestamp () ;
 int feTimestampDifference (scalar_t__,scalar_t__,long*,int*) ;
 scalar_t__ feTimestampDifferenceExceeds (scalar_t__,scalar_t__,int) ;
 scalar_t__ fe_recvint64 (char*) ;
 int fileno (int ) ;
 int flushAndSendFeedback (int *,scalar_t__*) ;
 scalar_t__ fstat (int,struct stat*) ;
 int fsync_interval ;
 int isatty (int) ;
 int noptions ;
 int open (int,int,int) ;
 int ** options ;
 int outfd ;
 int outfile ;
 scalar_t__ output_fsync_lsn ;
 int output_isfile ;
 scalar_t__ output_last_fsync ;
 int output_needs_fsync ;
 int output_reopen ;
 scalar_t__ output_written_lsn ;
 int pg_log_error (char*,...) ;
 int pg_log_info (char*,...) ;
 int prepareToTerminate (int *,scalar_t__,int,scalar_t__) ;
 int replication_slot ;
 int resetPQExpBuffer (TYPE_1__*) ;
 int select (scalar_t__,int *,int *,int *,struct timeval*) ;
 int sendFeedback (int *,scalar_t__,int,int) ;
 int standby_message_timeout ;
 int startpos ;
 int stdout ;
 scalar_t__ strcmp (int,char*) ;
 int time_to_abort ;
 scalar_t__ verbose ;
 int write (int,char*,int) ;

__attribute__((used)) static void
StreamLogicalLog(void)
{
 PGresult *res;
 char *copybuf = ((void*)0);
 TimestampTz last_status = -1;
 int i;
 PQExpBuffer query;

 output_written_lsn = InvalidXLogRecPtr;
 output_fsync_lsn = InvalidXLogRecPtr;

 query = createPQExpBuffer();




 if (!conn)
  conn = GetConnection();
 if (!conn)

  return;




 if (verbose)
  pg_log_info("starting log streaming at %X/%X (slot %s)",
     (uint32) (startpos >> 32), (uint32) startpos,
     replication_slot);


 appendPQExpBuffer(query, "START_REPLICATION SLOT \"%s\" LOGICAL %X/%X",
       replication_slot, (uint32) (startpos >> 32), (uint32) startpos);


 if (noptions)
  appendPQExpBufferStr(query, " (");

 for (i = 0; i < noptions; i++)
 {

  if (i > 0)
   appendPQExpBufferStr(query, ", ");


  appendPQExpBuffer(query, "\"%s\"", options[(i * 2)]);


  if (options[(i * 2) + 1] != ((void*)0))
   appendPQExpBuffer(query, " '%s'", options[(i * 2) + 1]);
 }

 if (noptions)
  appendPQExpBufferChar(query, ')');

 res = PQexec(conn, query->data);
 if (PQresultStatus(res) != PGRES_COPY_BOTH)
 {
  pg_log_error("could not send replication command \"%s\": %s",
      query->data, PQresultErrorMessage(res));
  PQclear(res);
  goto error;
 }
 PQclear(res);
 resetPQExpBuffer(query);

 if (verbose)
  pg_log_info("streaming initiated");

 while (!time_to_abort)
 {
  int r;
  int bytes_left;
  int bytes_written;
  TimestampTz now;
  int hdr_len;
  XLogRecPtr cur_record_lsn = InvalidXLogRecPtr;

  if (copybuf != ((void*)0))
  {
   PQfreemem(copybuf);
   copybuf = ((void*)0);
  }




  now = feGetCurrentTimestamp();

  if (outfd != -1 &&
   feTimestampDifferenceExceeds(output_last_fsync, now,
           fsync_interval))
  {
   if (!OutputFsync(now))
    goto error;
  }

  if (standby_message_timeout > 0 &&
   feTimestampDifferenceExceeds(last_status, now,
           standby_message_timeout))
  {

   if (!sendFeedback(conn, now, 1, 0))
    goto error;

   last_status = now;
  }


  if (outfd != -1 && output_reopen && strcmp(outfile, "-") != 0)
  {
   now = feGetCurrentTimestamp();
   if (!OutputFsync(now))
    goto error;
   close(outfd);
   outfd = -1;
  }
  output_reopen = 0;


  if (outfd == -1)
  {
   struct stat statbuf;

   if (strcmp(outfile, "-") == 0)
    outfd = fileno(stdout);
   else
    outfd = open(outfile, O_CREAT | O_APPEND | O_WRONLY | PG_BINARY,
        S_IRUSR | S_IWUSR);
   if (outfd == -1)
   {
    pg_log_error("could not open log file \"%s\": %m", outfile);
    goto error;
   }

   if (fstat(outfd, &statbuf) != 0)
    pg_log_error("could not stat file \"%s\": %m", outfile);

   output_isfile = S_ISREG(statbuf.st_mode) && !isatty(outfd);
  }

  r = PQgetCopyData(conn, &copybuf, 1);
  if (r == 0)
  {





   fd_set input_mask;
   TimestampTz message_target = 0;
   TimestampTz fsync_target = 0;
   struct timeval timeout;
   struct timeval *timeoutptr = ((void*)0);

   if (PQsocket(conn) < 0)
   {
    pg_log_error("invalid socket: %s", PQerrorMessage(conn));
    goto error;
   }

   FD_ZERO(&input_mask);
   FD_SET(PQsocket(conn), &input_mask);


   if (standby_message_timeout)
    message_target = last_status + (standby_message_timeout - 1) *
     ((int64) 1000);


   if (fsync_interval > 0 && output_needs_fsync)
    fsync_target = output_last_fsync + (fsync_interval - 1) *
     ((int64) 1000);


   if (message_target > 0 || fsync_target > 0)
   {
    TimestampTz targettime;
    long secs;
    int usecs;

    targettime = message_target;

    if (fsync_target > 0 && fsync_target < targettime)
     targettime = fsync_target;

    feTimestampDifference(now,
           targettime,
           &secs,
           &usecs);
    if (secs <= 0)
     timeout.tv_sec = 1;
    else
     timeout.tv_sec = secs;
    timeout.tv_usec = usecs;
    timeoutptr = &timeout;
   }

   r = select(PQsocket(conn) + 1, &input_mask, ((void*)0), ((void*)0), timeoutptr);
   if (r == 0 || (r < 0 && errno == EINTR))
   {





    continue;
   }
   else if (r < 0)
   {
    pg_log_error("select() failed: %m");
    goto error;
   }


   if (PQconsumeInput(conn) == 0)
   {
    pg_log_error("could not receive data from WAL stream: %s",
        PQerrorMessage(conn));
    goto error;
   }
   continue;
  }


  if (r == -1)
   break;


  if (r == -2)
  {
   pg_log_error("could not read COPY data: %s",
       PQerrorMessage(conn));
   goto error;
  }


  if (copybuf[0] == 'k')
  {
   int pos;
   bool replyRequested;
   XLogRecPtr walEnd;
   bool endposReached = 0;






   pos = 1;
   walEnd = fe_recvint64(&copybuf[pos]);
   output_written_lsn = Max(walEnd, output_written_lsn);

   pos += 8;

   pos += 8;

   if (r < pos + 1)
   {
    pg_log_error("streaming header too small: %d", r);
    goto error;
   }
   replyRequested = copybuf[pos];

   if (endpos != InvalidXLogRecPtr && walEnd >= endpos)
   {






    endposReached = 1;
   }


   if (replyRequested || endposReached)
   {
    if (!flushAndSendFeedback(conn, &now))
     goto error;
    last_status = now;
   }

   if (endposReached)
   {
    prepareToTerminate(conn, endpos, 1, InvalidXLogRecPtr);
    time_to_abort = 1;
    break;
   }

   continue;
  }
  else if (copybuf[0] != 'w')
  {
   pg_log_error("unrecognized streaming header: \"%c\"",
       copybuf[0]);
   goto error;
  }






  hdr_len = 1;
  hdr_len += 8;
  hdr_len += 8;
  hdr_len += 8;
  if (r < hdr_len + 1)
  {
   pg_log_error("streaming header too small: %d", r);
   goto error;
  }


  cur_record_lsn = fe_recvint64(&copybuf[1]);

  if (endpos != InvalidXLogRecPtr && cur_record_lsn > endpos)
  {




   if (!flushAndSendFeedback(conn, &now))
    goto error;
   prepareToTerminate(conn, endpos, 0, cur_record_lsn);
   time_to_abort = 1;
   break;
  }

  output_written_lsn = Max(cur_record_lsn, output_written_lsn);

  bytes_left = r - hdr_len;
  bytes_written = 0;


  output_needs_fsync = 1;

  while (bytes_left)
  {
   int ret;

   ret = write(outfd,
      copybuf + hdr_len + bytes_written,
      bytes_left);

   if (ret < 0)
   {
    pg_log_error("could not write %u bytes to log file \"%s\": %m",
        bytes_left, outfile);
    goto error;
   }


   bytes_written += ret;
   bytes_left -= ret;
  }

  if (write(outfd, "\n", 1) != 1)
  {
   pg_log_error("could not write %u bytes to log file \"%s\": %m",
       1, outfile);
   goto error;
  }

  if (endpos != InvalidXLogRecPtr && cur_record_lsn == endpos)
  {

   if (!flushAndSendFeedback(conn, &now))
    goto error;
   prepareToTerminate(conn, endpos, 0, cur_record_lsn);
   time_to_abort = 1;
   break;
  }
 }

 res = PQgetResult(conn);
 if (PQresultStatus(res) == PGRES_COPY_OUT)
 {





  goto error;
 }
 else if (PQresultStatus(res) != PGRES_COMMAND_OK)
 {
  pg_log_error("unexpected termination of replication stream: %s",
      PQresultErrorMessage(res));
  goto error;
 }
 PQclear(res);

 if (outfd != -1 && strcmp(outfile, "-") != 0)
 {
  TimestampTz t = feGetCurrentTimestamp();


  OutputFsync(t);

  if (close(outfd) != 0)
   pg_log_error("could not close file \"%s\": %m", outfile);
 }
 outfd = -1;
error:
 if (copybuf != ((void*)0))
 {
  PQfreemem(copybuf);
  copybuf = ((void*)0);
 }
 destroyPQExpBuffer(query);
 PQfinish(conn);
 conn = ((void*)0);
}
