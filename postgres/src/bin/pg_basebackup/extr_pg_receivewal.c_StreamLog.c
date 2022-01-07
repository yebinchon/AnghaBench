
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32 ;
typedef int stream ;
typedef int XLogRecPtr ;
typedef int TimeLineID ;
struct TYPE_7__ {int (* finish ) () ;} ;
struct TYPE_6__ {int startpos; int mark_done; char* partial_suffix; TYPE_2__* walmethod; int replication_slot; int do_sync; int synchronous; int standby_message_timeout; int stop_socket; int stream_stop; int timeline; } ;
typedef TYPE_1__ StreamCtl ;


 int CheckServerVersionForStreaming (int *) ;
 TYPE_2__* CreateWalDirectoryMethod (int ,int ,int ) ;
 int FindStreamingStart (int *) ;
 int FreeWalDirectoryMethod () ;
 int * GetConnection () ;
 int InvalidXLogRecPtr ;
 int MemSet (TYPE_1__*,int ,int) ;
 int PGINVALID_SOCKET ;
 int PQfinish (int *) ;
 int ReceiveXlogStream (int *,TYPE_1__*) ;
 int RunIdentifySystem (int *,int *,int *,int*,int *) ;
 int WalSegSz ;
 scalar_t__ XLogSegmentOffset (int,int ) ;
 int basedir ;
 int compresslevel ;
 int * conn ;
 int do_sync ;
 int exit (int) ;
 int pg_free (TYPE_2__*) ;
 int pg_log_info (char*,...) ;
 int replication_slot ;
 int standby_message_timeout ;
 int stop_streaming ;
 int stub1 () ;
 int synchronous ;
 scalar_t__ verbose ;

__attribute__((used)) static void
StreamLog(void)
{
 XLogRecPtr serverpos;
 TimeLineID servertli;
 StreamCtl stream;

 MemSet(&stream, 0, sizeof(stream));




 if (conn == ((void*)0))
  conn = GetConnection();
 if (!conn)

  return;

 if (!CheckServerVersionForStreaming(conn))
 {





  exit(1);
 }






 if (!RunIdentifySystem(conn, ((void*)0), &servertli, &serverpos, ((void*)0)))
  exit(1);




 stream.startpos = FindStreamingStart(&stream.timeline);
 if (stream.startpos == InvalidXLogRecPtr)
 {
  stream.startpos = serverpos;
  stream.timeline = servertli;
 }




 stream.startpos -= XLogSegmentOffset(stream.startpos, WalSegSz);




 if (verbose)
  pg_log_info("starting log streaming at %X/%X (timeline %u)",
     (uint32) (stream.startpos >> 32), (uint32) stream.startpos,
     stream.timeline);

 stream.stream_stop = stop_streaming;
 stream.stop_socket = PGINVALID_SOCKET;
 stream.standby_message_timeout = standby_message_timeout;
 stream.synchronous = synchronous;
 stream.do_sync = do_sync;
 stream.mark_done = 0;
 stream.walmethod = CreateWalDirectoryMethod(basedir, compresslevel,
            stream.do_sync);
 stream.partial_suffix = ".partial";
 stream.replication_slot = replication_slot;

 ReceiveXlogStream(conn, &stream);

 if (!stream.walmethod->finish())
 {
  pg_log_info("could not finish writing WAL files: %m");
  return;
 }

 PQfinish(conn);
 conn = ((void*)0);

 FreeWalDirectoryMethod();
 pg_free(stream.walmethod);

 conn = ((void*)0);
}
