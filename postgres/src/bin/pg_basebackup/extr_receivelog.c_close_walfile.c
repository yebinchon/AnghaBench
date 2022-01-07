
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int off_t ;
typedef int XLogRecPtr ;
struct TYPE_6__ {scalar_t__ mark_done; TYPE_1__* walmethod; scalar_t__ partial_suffix; } ;
struct TYPE_5__ {int (* get_current_pos ) (int *) ;int (* close ) (int *,int ) ;int (* getlasterror ) () ;} ;
typedef TYPE_2__ StreamCtl ;


 int CLOSE_NORMAL ;
 int CLOSE_NO_RENAME ;
 int CLOSE_UNLINK ;
 int WalSegSz ;
 int current_walfile_name ;
 int lastFlushPosition ;
 int mark_file_as_archived (TYPE_2__*,int ) ;
 int pg_log_error (char*,int ,int ) ;
 int pg_log_info (char*,int ,scalar_t__) ;
 int stub1 (int *) ;
 int stub2 () ;
 int stub3 (int *,int ) ;
 int stub4 (int *,int ) ;
 int stub5 (int *,int ) ;
 int stub6 (int *,int ) ;
 int stub7 () ;
 int * walfile ;

__attribute__((used)) static bool
close_walfile(StreamCtl *stream, XLogRecPtr pos)
{
 off_t currpos;
 int r;

 if (walfile == ((void*)0))
  return 1;

 currpos = stream->walmethod->get_current_pos(walfile);
 if (currpos == -1)
 {
  pg_log_error("could not determine seek position in file \"%s\": %s",
      current_walfile_name, stream->walmethod->getlasterror());
  stream->walmethod->close(walfile, CLOSE_UNLINK);
  walfile = ((void*)0);

  return 0;
 }

 if (stream->partial_suffix)
 {
  if (currpos == WalSegSz)
   r = stream->walmethod->close(walfile, CLOSE_NORMAL);
  else
  {
   pg_log_info("not renaming \"%s%s\", segment is not complete",
      current_walfile_name, stream->partial_suffix);
   r = stream->walmethod->close(walfile, CLOSE_NO_RENAME);
  }
 }
 else
  r = stream->walmethod->close(walfile, CLOSE_NORMAL);

 walfile = ((void*)0);

 if (r != 0)
 {
  pg_log_error("could not close file \"%s\": %s",
      current_walfile_name, stream->walmethod->getlasterror());
  return 0;
 }







 if (currpos == WalSegSz && stream->mark_done)
 {

  if (!mark_file_as_archived(stream, current_walfile_name))
   return 0;
 }

 lastFlushPosition = pos;
 return 1;
}
