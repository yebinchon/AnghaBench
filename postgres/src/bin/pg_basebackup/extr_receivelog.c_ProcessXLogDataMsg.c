
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int XLogRecPtr ;
struct TYPE_7__ {int timeline; scalar_t__ (* stream_stop ) (int,int ,int) ;TYPE_1__* walmethod; } ;
struct TYPE_6__ {int (* get_current_pos ) (int *) ;int (* write ) (int *,char*,int) ;int (* getlasterror ) () ;} ;
typedef TYPE_2__ StreamCtl ;
typedef int PGconn ;


 int PQerrorMessage (int *) ;
 scalar_t__ PQflush (int *) ;
 scalar_t__ PQputCopyEnd (int *,int *) ;
 int WalSegSz ;
 int XLogSegmentOffset (int,int) ;
 int close_walfile (TYPE_2__*,int) ;
 int current_walfile_name ;
 int fe_recvint64 (char*) ;
 int open_walfile (TYPE_2__*,int) ;
 int pg_log_error (char*,int,...) ;
 int still_sending ;
 int stub1 (int *) ;
 int stub2 (int *) ;
 int stub3 (int *,char*,int) ;
 int stub4 () ;
 scalar_t__ stub5 (int,int ,int) ;
 int * walfile ;

__attribute__((used)) static bool
ProcessXLogDataMsg(PGconn *conn, StreamCtl *stream, char *copybuf, int len,
       XLogRecPtr *blockpos)
{
 int xlogoff;
 int bytes_left;
 int bytes_written;
 int hdr_len;





 if (!(still_sending))
  return 1;






 hdr_len = 1;
 hdr_len += 8;
 hdr_len += 8;
 hdr_len += 8;
 if (len < hdr_len)
 {
  pg_log_error("streaming header too small: %d", len);
  return 0;
 }
 *blockpos = fe_recvint64(&copybuf[1]);


 xlogoff = XLogSegmentOffset(*blockpos, WalSegSz);





 if (walfile == ((void*)0))
 {

  if (xlogoff != 0)
  {
   pg_log_error("received write-ahead log record for offset %u with no file open",
       xlogoff);
   return 0;
  }
 }
 else
 {

  if (stream->walmethod->get_current_pos(walfile) != xlogoff)
  {
   pg_log_error("got WAL data offset %08x, expected %08x",
       xlogoff, (int) stream->walmethod->get_current_pos(walfile));
   return 0;
  }
 }

 bytes_left = len - hdr_len;
 bytes_written = 0;

 while (bytes_left)
 {
  int bytes_to_write;





  if (xlogoff + bytes_left > WalSegSz)
   bytes_to_write = WalSegSz - xlogoff;
  else
   bytes_to_write = bytes_left;

  if (walfile == ((void*)0))
  {
   if (!open_walfile(stream, *blockpos))
   {

    return 0;
   }
  }

  if (stream->walmethod->write(walfile, copybuf + hdr_len + bytes_written,
          bytes_to_write) != bytes_to_write)
  {
   pg_log_error("could not write %u bytes to WAL file \"%s\": %s",
       bytes_to_write, current_walfile_name,
       stream->walmethod->getlasterror());
   return 0;
  }


  bytes_written += bytes_to_write;
  bytes_left -= bytes_to_write;
  *blockpos += bytes_to_write;
  xlogoff += bytes_to_write;


  if (XLogSegmentOffset(*blockpos, WalSegSz) == 0)
  {
   if (!close_walfile(stream, *blockpos))

    return 0;

   xlogoff = 0;

   if (still_sending && stream->stream_stop(*blockpos, stream->timeline, 1))
   {
    if (PQputCopyEnd(conn, ((void*)0)) <= 0 || PQflush(conn))
    {
     pg_log_error("could not send copy-end packet: %s",
         PQerrorMessage(conn));
     return 0;
    }
    still_sending = 0;
    return 1;
   }
  }
 }


 return 1;
}
