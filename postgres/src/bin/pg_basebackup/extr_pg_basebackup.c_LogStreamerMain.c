
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int stream ;
struct TYPE_9__ {int bgconn; int xlog; int sysidentifier; int timeline; int startptr; } ;
typedef TYPE_1__ logstreamer_param ;
struct TYPE_11__ {int (* finish ) () ;} ;
struct TYPE_10__ {int synchronous; int do_sync; int mark_done; TYPE_3__* walmethod; int replication_slot; int * partial_suffix; int standby_message_timeout; int stop_socket; int stream_stop; int sysidentifier; int timeline; int startpos; } ;
typedef TYPE_2__ StreamCtl ;


 TYPE_3__* CreateWalDirectoryMethod (int ,int ,int) ;
 TYPE_3__* CreateWalTarMethod (int ,int ,int) ;
 int FreeWalDirectoryMethod () ;
 int FreeWalTarMethod () ;
 int MemSet (TYPE_2__*,int ,int) ;
 int PGINVALID_SOCKET ;
 int PQfinish (int ) ;
 int ReceiveXlogStream (int ,TYPE_2__*) ;
 int * bgpipe ;
 int compresslevel ;
 char format ;
 int in_log_streamer ;
 int pg_free (TYPE_3__*) ;
 int pg_log_error (char*) ;
 int reached_end_position ;
 int replication_slot ;
 int standby_message_timeout ;
 int stub1 () ;

__attribute__((used)) static int
LogStreamerMain(logstreamer_param *param)
{
 StreamCtl stream;

 in_log_streamer = 1;

 MemSet(&stream, 0, sizeof(stream));
 stream.startpos = param->startptr;
 stream.timeline = param->timeline;
 stream.sysidentifier = param->sysidentifier;
 stream.stream_stop = reached_end_position;

 stream.stop_socket = bgpipe[0];



 stream.standby_message_timeout = standby_message_timeout;
 stream.synchronous = 0;

 stream.do_sync = 0;
 stream.mark_done = 1;
 stream.partial_suffix = ((void*)0);
 stream.replication_slot = replication_slot;

 if (format == 'p')
  stream.walmethod = CreateWalDirectoryMethod(param->xlog, 0,
             stream.do_sync);
 else
  stream.walmethod = CreateWalTarMethod(param->xlog, compresslevel,
             stream.do_sync);

 if (!ReceiveXlogStream(param->bgconn, &stream))






  return 1;

 if (!stream.walmethod->finish())
 {
  pg_log_error("could not finish writing WAL files: %m");
  return 1;
 }

 PQfinish(param->bgconn);

 if (format == 'p')
  FreeWalDirectoryMethod();
 else
  FreeWalTarMethod();
 pg_free(stream.walmethod);

 return 0;
}
