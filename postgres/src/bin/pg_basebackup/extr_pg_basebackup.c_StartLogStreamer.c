
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64 ;
typedef int uint32 ;
typedef int statusdir ;
struct TYPE_5__ {int timeline; char* sysidentifier; int startptr; char* xlog; int bgconn; } ;
typedef TYPE_1__ logstreamer_param ;


 int CreateReplicationSlot (int ,scalar_t__,int *,int,int,int,int) ;
 scalar_t__ EEXIST ;
 int GetConnection () ;
 int LogStreamerMain (TYPE_1__*) ;
 int MAXPGPATH ;
 scalar_t__ MINIMUM_VERSION_FOR_PG_WAL ;
 scalar_t__ MINIMUM_VERSION_FOR_TEMP_SLOTS ;
 scalar_t__ PQbackendPID (int ) ;
 scalar_t__ PQserverVersion (int ) ;
 int WalSegSz ;
 scalar_t__ XLogSegmentOffset (int,int ) ;
 scalar_t__ _beginthreadex (int *,int ,void*,TYPE_1__*,int ,int *) ;
 int atexit (int ) ;
 char* basedir ;
 scalar_t__ bgchild ;
 int bgpipe ;
 int conn ;
 scalar_t__ create_slot ;
 scalar_t__ errno ;
 int exit (int) ;
 scalar_t__ fork () ;
 char format ;
 int kill_bgchild_atexit ;
 int pg_dir_create_mode ;
 int pg_log_error (char*,...) ;
 int pg_log_info (char*,scalar_t__) ;
 TYPE_1__* pg_malloc0 (int) ;
 scalar_t__ pg_mkdir_p (char*,int ) ;
 scalar_t__ pipe (int ) ;
 scalar_t__ psprintf (char*,int) ;
 scalar_t__ replication_slot ;
 int snprintf (char*,int,char*,char*,char*) ;
 int sscanf (char*,char*,int*,int*) ;
 int temp_replication_slot ;
 scalar_t__ verbose ;

__attribute__((used)) static void
StartLogStreamer(char *startpos, uint32 timeline, char *sysidentifier)
{
 logstreamer_param *param;
 uint32 hi,
    lo;
 char statusdir[MAXPGPATH];

 param = pg_malloc0(sizeof(logstreamer_param));
 param->timeline = timeline;
 param->sysidentifier = sysidentifier;


 if (sscanf(startpos, "%X/%X", &hi, &lo) != 2)
 {
  pg_log_error("could not parse write-ahead log location \"%s\"",
      startpos);
  exit(1);
 }
 param->startptr = ((uint64) hi) << 32 | lo;

 param->startptr -= XLogSegmentOffset(param->startptr, WalSegSz);



 if (pipe(bgpipe) < 0)
 {
  pg_log_error("could not create pipe for background process: %m");
  exit(1);
 }



 param->bgconn = GetConnection();
 if (!param->bgconn)

  exit(1);


 snprintf(param->xlog, sizeof(param->xlog), "%s/%s",
    basedir,
    PQserverVersion(conn) < MINIMUM_VERSION_FOR_PG_WAL ?
    "pg_xlog" : "pg_wal");


 if (PQserverVersion(conn) < MINIMUM_VERSION_FOR_TEMP_SLOTS)
  temp_replication_slot = 0;




 if (temp_replication_slot && !replication_slot)
  replication_slot = psprintf("pg_basebackup_%d", (int) PQbackendPID(param->bgconn));
 if (temp_replication_slot || create_slot)
 {
  if (!CreateReplicationSlot(param->bgconn, replication_slot, ((void*)0),
           temp_replication_slot, 1, 1, 0))
   exit(1);

  if (verbose)
  {
   if (temp_replication_slot)
    pg_log_info("created temporary replication slot \"%s\"",
       replication_slot);
   else
    pg_log_info("created replication slot \"%s\"",
       replication_slot);
  }
 }

 if (format == 'p')
 {






  snprintf(statusdir, sizeof(statusdir), "%s/%s/archive_status",
     basedir,
     PQserverVersion(conn) < MINIMUM_VERSION_FOR_PG_WAL ?
     "pg_xlog" : "pg_wal");

  if (pg_mkdir_p(statusdir, pg_dir_create_mode) != 0 && errno != EEXIST)
  {
   pg_log_error("could not create directory \"%s\": %m", statusdir);
   exit(1);
  }
 }






 bgchild = fork();
 if (bgchild == 0)
 {

  exit(LogStreamerMain(param));
 }
 else if (bgchild < 0)
 {
  pg_log_error("could not create background process: %m");
  exit(1);
 }




 atexit(kill_bgchild_atexit);
}
