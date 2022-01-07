
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int Walfile ;
struct TYPE_6__ {char* timeline; scalar_t__ mark_done; TYPE_1__* walmethod; } ;
struct TYPE_5__ {char* (* getlasterror ) () ;scalar_t__ (* close ) (int *,int ) ;scalar_t__ (* write ) (int *,char*,int) ;int * (* open_for_write ) (char*,char*,int ) ;} ;
typedef TYPE_2__ StreamCtl ;


 int CLOSE_NORMAL ;
 int CLOSE_UNLINK ;
 int MAXFNAMELEN ;
 int TLHistoryFileName (char*,char*) ;
 int mark_file_as_archived (TYPE_2__*,char*) ;
 int pg_log_error (char*,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 int * stub1 (char*,char*,int ) ;
 char* stub2 () ;
 scalar_t__ stub3 (int *,char*,int) ;
 char* stub4 () ;
 scalar_t__ stub5 (int *,int ) ;
 scalar_t__ stub6 (int *,int ) ;
 char* stub7 () ;

__attribute__((used)) static bool
writeTimeLineHistoryFile(StreamCtl *stream, char *filename, char *content)
{
 int size = strlen(content);
 char histfname[MAXFNAMELEN];
 Walfile *f;





 TLHistoryFileName(histfname, stream->timeline);
 if (strcmp(histfname, filename) != 0)
 {
  pg_log_error("server reported unexpected history file name for timeline %u: %s",
      stream->timeline, filename);
  return 0;
 }

 f = stream->walmethod->open_for_write(histfname, ".tmp", 0);
 if (f == ((void*)0))
 {
  pg_log_error("could not create timeline history file \"%s\": %s",
      histfname, stream->walmethod->getlasterror());
  return 0;
 }

 if ((int) stream->walmethod->write(f, content, size) != size)
 {
  pg_log_error("could not write timeline history file \"%s\": %s",
      histfname, stream->walmethod->getlasterror());




  stream->walmethod->close(f, CLOSE_UNLINK);

  return 0;
 }

 if (stream->walmethod->close(f, CLOSE_NORMAL) != 0)
 {
  pg_log_error("could not close file \"%s\": %s",
      histfname, stream->walmethod->getlasterror());
  return 0;
 }


 if (stream->mark_done)
 {

  if (!mark_file_as_archived(stream, histfname))
   return 0;
 }

 return 1;
}
