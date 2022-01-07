
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef int fn ;
typedef int XLogSegNo ;
typedef int XLogRecPtr ;
typedef int Walfile ;
struct TYPE_5__ {char* partial_suffix; TYPE_1__* walmethod; int timeline; } ;
struct TYPE_4__ {scalar_t__ (* get_file_size ) (char*) ;scalar_t__ (* sync ) (int *) ;int (* getlasterror ) () ;int * (* open_for_write ) (char*,char*,scalar_t__) ;int (* close ) (int *,int ) ;scalar_t__ (* existsfile ) (char*) ;} ;
typedef TYPE_2__ StreamCtl ;


 int CLOSE_UNLINK ;
 scalar_t__ ENOSPC ;
 int MAXPGPATH ;
 scalar_t__ WalSegSz ;
 int XLByteToSeg (int ,int ,scalar_t__) ;
 int XLogFileName (char*,int ,int ,scalar_t__) ;
 char* current_walfile_name ;
 scalar_t__ errno ;
 int exit (int) ;
 int ngettext (char*,char*,scalar_t__) ;
 int pg_log_error (char*,char*,int,...) ;
 int pg_log_fatal (char*,char*,int ) ;
 int snprintf (char*,int,char*,char*,char*) ;
 scalar_t__ stub1 (char*) ;
 int stub10 () ;
 scalar_t__ stub2 (char*) ;
 int stub3 () ;
 int * stub4 (char*,char*,scalar_t__) ;
 int stub5 () ;
 scalar_t__ stub6 (int *) ;
 int stub7 () ;
 int stub8 (int *,int ) ;
 int * stub9 (char*,char*,scalar_t__) ;
 int * walfile ;

__attribute__((used)) static bool
open_walfile(StreamCtl *stream, XLogRecPtr startpoint)
{
 Walfile *f;
 char fn[MAXPGPATH];
 ssize_t size;
 XLogSegNo segno;

 XLByteToSeg(startpoint, segno, WalSegSz);
 XLogFileName(current_walfile_name, stream->timeline, segno, WalSegSz);

 snprintf(fn, sizeof(fn), "%s%s", current_walfile_name,
    stream->partial_suffix ? stream->partial_suffix : "");
 if (stream->walmethod->existsfile(fn))
 {
  size = stream->walmethod->get_file_size(fn);
  if (size < 0)
  {
   pg_log_error("could not get size of write-ahead log file \"%s\": %s",
       fn, stream->walmethod->getlasterror());
   return 0;
  }
  if (size == WalSegSz)
  {

   f = stream->walmethod->open_for_write(current_walfile_name, stream->partial_suffix, 0);
   if (f == ((void*)0))
   {
    pg_log_error("could not open existing write-ahead log file \"%s\": %s",
        fn, stream->walmethod->getlasterror());
    return 0;
   }


   if (stream->walmethod->sync(f) != 0)
   {
    pg_log_fatal("could not fsync existing write-ahead log file \"%s\": %s",
        fn, stream->walmethod->getlasterror());
    stream->walmethod->close(f, CLOSE_UNLINK);
    exit(1);
   }

   walfile = f;
   return 1;
  }
  if (size != 0)
  {

   if (errno == 0)
    errno = ENOSPC;
   pg_log_error(ngettext("write-ahead log file \"%s\" has %d byte, should be 0 or %d",
          "write-ahead log file \"%s\" has %d bytes, should be 0 or %d",
          size),
       fn, (int) size, WalSegSz);
   return 0;
  }

 }



 f = stream->walmethod->open_for_write(current_walfile_name,
            stream->partial_suffix, WalSegSz);
 if (f == ((void*)0))
 {
  pg_log_error("could not open write-ahead log file \"%s\": %s",
      fn, stream->walmethod->getlasterror());
  return 0;
 }

 walfile = f;
 return 1;
}
