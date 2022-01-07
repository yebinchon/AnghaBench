
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32 ;
typedef int query ;
typedef int XLogRecPtr ;
struct TYPE_8__ {char* replication_slot; scalar_t__ timeline; int startpos; TYPE_1__* walmethod; scalar_t__ (* stream_stop ) (int,int,int) ;int * sysidentifier; scalar_t__ synchronous; } ;
struct TYPE_7__ {scalar_t__ (* close ) (int *,int ) ;int (* getlasterror ) () ;} ;
typedef TYPE_2__ StreamCtl ;
typedef int PGresult ;
typedef int PGconn ;


 int CLOSE_NO_RENAME ;
 int CheckServerVersionForStreaming (int *) ;
 int * HandleCopyStream (int *,TYPE_2__*,int*) ;
 scalar_t__ PGRES_COMMAND_OK ;
 scalar_t__ PGRES_COPY_BOTH ;
 scalar_t__ PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQerrorMessage (int *) ;
 int * PQexec (int *,char*) ;
 int * PQgetResult (int *) ;
 int PQgetvalue (int *,int ,int) ;
 int PQnfields (int *) ;
 int PQntuples (int *) ;
 int PQresultErrorMessage (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int ReadEndOfStreamingResult (int *,int*,int*) ;
 int WalSegSz ;
 int XLogSegmentOffset (int,int ) ;
 scalar_t__ atoi (int ) ;
 int current_walfile_name ;
 int existsTimeLineHistoryFile (TYPE_2__*) ;
 int lastFlushPosition ;
 int pg_log_error (char*,...) ;
 int pg_log_warning (char*,int,int,int,int) ;
 int reportFlushPosition ;
 int snprintf (char*,int,char*,char*,...) ;
 int sprintf (char*,char*,char*) ;
 scalar_t__ strcmp (int *,int ) ;
 scalar_t__ stub1 (int,int,int) ;
 scalar_t__ stub2 (int,int,int) ;
 scalar_t__ stub3 (int *,int ) ;
 int stub4 () ;
 int * walfile ;
 int writeTimeLineHistoryFile (TYPE_2__*,int ,int ) ;

bool
ReceiveXlogStream(PGconn *conn, StreamCtl *stream)
{
 char query[128];
 char slotcmd[128];
 PGresult *res;
 XLogRecPtr stoppos;





 if (!CheckServerVersionForStreaming(conn))
  return 0;
 if (stream->replication_slot != ((void*)0))
 {
  reportFlushPosition = 1;
  sprintf(slotcmd, "SLOT \"%s\" ", stream->replication_slot);
 }
 else
 {
  if (stream->synchronous)
   reportFlushPosition = 1;
  else
   reportFlushPosition = 0;
  slotcmd[0] = 0;
 }

 if (stream->sysidentifier != ((void*)0))
 {

  res = PQexec(conn, "IDENTIFY_SYSTEM");
  if (PQresultStatus(res) != PGRES_TUPLES_OK)
  {
   pg_log_error("could not send replication command \"%s\": %s",
       "IDENTIFY_SYSTEM", PQerrorMessage(conn));
   PQclear(res);
   return 0;
  }
  if (PQntuples(res) != 1 || PQnfields(res) < 3)
  {
   pg_log_error("could not identify system: got %d rows and %d fields, expected %d rows and %d or more fields",
       PQntuples(res), PQnfields(res), 1, 3);
   PQclear(res);
   return 0;
  }
  if (strcmp(stream->sysidentifier, PQgetvalue(res, 0, 0)) != 0)
  {
   pg_log_error("system identifier does not match between base backup and streaming connection");
   PQclear(res);
   return 0;
  }
  if (stream->timeline > atoi(PQgetvalue(res, 0, 1)))
  {
   pg_log_error("starting timeline %u is not present in the server",
       stream->timeline);
   PQclear(res);
   return 0;
  }
  PQclear(res);
 }





 lastFlushPosition = stream->startpos;

 while (1)
 {






  if (!existsTimeLineHistoryFile(stream))
  {
   snprintf(query, sizeof(query), "TIMELINE_HISTORY %u", stream->timeline);
   res = PQexec(conn, query);
   if (PQresultStatus(res) != PGRES_TUPLES_OK)
   {

    pg_log_error("could not send replication command \"%s\": %s",
        "TIMELINE_HISTORY", PQresultErrorMessage(res));
    PQclear(res);
    return 0;
   }





   if (PQnfields(res) != 2 || PQntuples(res) != 1)
   {
    pg_log_warning("unexpected response to TIMELINE_HISTORY command: got %d rows and %d fields, expected %d rows and %d fields",
          PQntuples(res), PQnfields(res), 1, 2);
   }


   writeTimeLineHistoryFile(stream,
          PQgetvalue(res, 0, 0),
          PQgetvalue(res, 0, 1));

   PQclear(res);
  }





  if (stream->stream_stop(stream->startpos, stream->timeline, 0))
   return 1;


  snprintf(query, sizeof(query), "START_REPLICATION %s%X/%X TIMELINE %u",
     slotcmd,
     (uint32) (stream->startpos >> 32), (uint32) stream->startpos,
     stream->timeline);
  res = PQexec(conn, query);
  if (PQresultStatus(res) != PGRES_COPY_BOTH)
  {
   pg_log_error("could not send replication command \"%s\": %s",
       "START_REPLICATION", PQresultErrorMessage(res));
   PQclear(res);
   return 0;
  }
  PQclear(res);


  res = HandleCopyStream(conn, stream, &stoppos);
  if (res == ((void*)0))
   goto error;
  if (PQresultStatus(res) == PGRES_TUPLES_OK)
  {
   uint32 newtimeline;
   bool parsed;

   parsed = ReadEndOfStreamingResult(res, &stream->startpos, &newtimeline);
   PQclear(res);
   if (!parsed)
    goto error;


   if (newtimeline <= stream->timeline)
   {
    pg_log_error("server reported unexpected next timeline %u, following timeline %u",
        newtimeline, stream->timeline);
    goto error;
   }
   if (stream->startpos > stoppos)
   {
    pg_log_error("server stopped streaming timeline %u at %X/%X, but reported next timeline %u to begin at %X/%X",
        stream->timeline, (uint32) (stoppos >> 32), (uint32) stoppos,
        newtimeline, (uint32) (stream->startpos >> 32), (uint32) stream->startpos);
    goto error;
   }


   res = PQgetResult(conn);
   if (PQresultStatus(res) != PGRES_COMMAND_OK)
   {
    pg_log_error("unexpected termination of replication stream: %s",
        PQresultErrorMessage(res));
    PQclear(res);
    goto error;
   }
   PQclear(res);





   stream->timeline = newtimeline;
   stream->startpos = stream->startpos -
    XLogSegmentOffset(stream->startpos, WalSegSz);
   continue;
  }
  else if (PQresultStatus(res) == PGRES_COMMAND_OK)
  {
   PQclear(res);







   if (stream->stream_stop(stoppos, stream->timeline, 0))
    return 1;
   else
   {
    pg_log_error("replication stream was terminated before stop point");
    goto error;
   }
  }
  else
  {

   pg_log_error("unexpected termination of replication stream: %s",
       PQresultErrorMessage(res));
   PQclear(res);
   goto error;
  }
 }

error:
 if (walfile != ((void*)0) && stream->walmethod->close(walfile, CLOSE_NO_RENAME) != 0)
  pg_log_error("could not close file \"%s\": %s",
      current_walfile_name, stream->walmethod->getlasterror());
 walfile = ((void*)0);
 return 0;
}
