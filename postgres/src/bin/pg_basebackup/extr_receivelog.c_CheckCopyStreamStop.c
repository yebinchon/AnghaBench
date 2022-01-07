
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int XLogRecPtr ;
struct TYPE_4__ {int timeline; scalar_t__ (* stream_stop ) (int ,int ,int) ;} ;
typedef TYPE_1__ StreamCtl ;
typedef int PGconn ;


 int PQerrorMessage (int *) ;
 scalar_t__ PQflush (int *) ;
 scalar_t__ PQputCopyEnd (int *,int *) ;
 int close_walfile (TYPE_1__*,int ) ;
 int pg_log_error (char*,int ) ;
 int still_sending ;
 scalar_t__ stub1 (int ,int ,int) ;

__attribute__((used)) static bool
CheckCopyStreamStop(PGconn *conn, StreamCtl *stream, XLogRecPtr blockpos,
     XLogRecPtr *stoppos)
{
 if (still_sending && stream->stream_stop(blockpos, stream->timeline, 0))
 {
  if (!close_walfile(stream, blockpos))
  {

   return 0;
  }
  if (PQputCopyEnd(conn, ((void*)0)) <= 0 || PQflush(conn))
  {
   pg_log_error("could not send copy-end packet: %s",
       PQerrorMessage(conn));
   return 0;
  }
  still_sending = 0;
 }

 return 1;
}
