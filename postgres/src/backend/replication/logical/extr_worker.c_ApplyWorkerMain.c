
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int originname ;
typedef int XLogRecPtr ;
struct TYPE_8__ {int publication_names; int proto_version; } ;
struct TYPE_9__ {TYPE_1__ logical; } ;
struct TYPE_10__ {int logical; char* slotname; TYPE_2__ proto; int startpoint; } ;
typedef TYPE_3__ WalRcvStreamOptions ;
typedef int TimeLineID ;
struct TYPE_12__ {char* subid; int relid; int userid; int dbid; int reply_time; int last_recv_time; int last_send_time; } ;
struct TYPE_11__ {char* name; char* synccommit; char* slotname; int oid; int publications; int conninfo; int enabled; } ;
typedef int RepOriginId ;
typedef int MemoryContext ;
typedef int Datum ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int ApplyContext ;
 int BackgroundWorkerInitializeConnectionByOid (int ,int ,int ) ;
 int BackgroundWorkerUnblockSignals () ;
 int CacheRegisterSyscacheCallback (int ,int ,int ) ;
 int CommitTransactionCommand () ;
 int DEBUG1 ;
 int DatumGetInt32 (int ) ;
 int ERROR ;
 int GetCurrentTimestamp () ;
 TYPE_5__* GetSubscription (char*,int) ;
 int LOG ;
 int LOGICALREP_PROTO_VERSION_NUM ;
 int LogicalRepApplyLoop (int ) ;
 char* LogicalRepSyncTableStart (int *) ;
 int MemoryContextSwitchTo (int ) ;
 TYPE_6__* MyLogicalRepWorker ;
 TYPE_5__* MySubscription ;
 int MySubscriptionValid ;
 int NAMEDATALEN ;
 int OidIsValid (int ) ;
 int PGC_BACKEND ;
 int PGC_SUSET ;
 int PGC_S_OVERRIDE ;
 int SIGHUP ;
 int SIGTERM ;
 int SUBSCRIPTIONOID ;
 int SUBSCRIPTIONRELMAP ;
 int SetConfigOption (char*,char*,int ,int ) ;
 int StartTransactionCommand () ;
 int TopMemoryContext ;
 scalar_t__ am_tablesync_worker () ;
 int die ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*,...) ;
 int get_rel_name (int ) ;
 int invalidate_syncing_table_states ;
 int load_file (char*,int) ;
 int logicalrep_worker_attach (int) ;
 int logicalrep_worker_sighup ;
 int pfree (char*) ;
 int pqsignal (int ,int ) ;
 int proc_exit (int ) ;
 char* pstrdup (char*) ;
 int replorigin_by_name (char*,int) ;
 int replorigin_create (char*) ;
 int replorigin_session_get_progress (int) ;
 int replorigin_session_origin ;
 int replorigin_session_setup (int ) ;
 int snprintf (char*,int,char*,int) ;
 int subscription_change_cb ;
 int * walrcv_connect (int ,int,char*,char**) ;
 int walrcv_identify_system (int *,int *) ;
 int walrcv_startstreaming (int *,TYPE_3__*) ;
 int * wrconn ;

void
ApplyWorkerMain(Datum main_arg)
{
 int worker_slot = DatumGetInt32(main_arg);
 MemoryContext oldctx;
 char originname[NAMEDATALEN];
 XLogRecPtr origin_startpos;
 char *myslotname;
 WalRcvStreamOptions options;


 logicalrep_worker_attach(worker_slot);


 pqsignal(SIGHUP, logicalrep_worker_sighup);
 pqsignal(SIGTERM, die);
 BackgroundWorkerUnblockSignals();







 MyLogicalRepWorker->last_send_time = MyLogicalRepWorker->last_recv_time =
  MyLogicalRepWorker->reply_time = GetCurrentTimestamp();


 load_file("libpqwalreceiver", 0);


 SetConfigOption("session_replication_role", "replica",
     PGC_SUSET, PGC_S_OVERRIDE);


 BackgroundWorkerInitializeConnectionByOid(MyLogicalRepWorker->dbid,
             MyLogicalRepWorker->userid,
             0);


 ApplyContext = AllocSetContextCreate(TopMemoryContext,
           "ApplyContext",
           ALLOCSET_DEFAULT_SIZES);
 StartTransactionCommand();
 oldctx = MemoryContextSwitchTo(ApplyContext);

 MySubscription = GetSubscription(MyLogicalRepWorker->subid, 1);
 if (!MySubscription)
 {
  ereport(LOG,
    (errmsg("logical replication apply worker for subscription %u will not "
      "start because the subscription was removed during startup",
      MyLogicalRepWorker->subid)));
  proc_exit(0);
 }

 MySubscriptionValid = 1;
 MemoryContextSwitchTo(oldctx);

 if (!MySubscription->enabled)
 {
  ereport(LOG,
    (errmsg("logical replication apply worker for subscription \"%s\" will not "
      "start because the subscription was disabled during startup",
      MySubscription->name)));

  proc_exit(0);
 }


 SetConfigOption("synchronous_commit", MySubscription->synccommit,
     PGC_BACKEND, PGC_S_OVERRIDE);


 CacheRegisterSyscacheCallback(SUBSCRIPTIONOID,
          subscription_change_cb,
          (Datum) 0);

 if (am_tablesync_worker())
  ereport(LOG,
    (errmsg("logical replication table synchronization worker for subscription \"%s\", table \"%s\" has started",
      MySubscription->name, get_rel_name(MyLogicalRepWorker->relid))));
 else
  ereport(LOG,
    (errmsg("logical replication apply worker for subscription \"%s\" has started",
      MySubscription->name)));

 CommitTransactionCommand();


 elog(DEBUG1, "connecting to publisher using connection string \"%s\"",
   MySubscription->conninfo);

 if (am_tablesync_worker())
 {
  char *syncslotname;


  syncslotname = LogicalRepSyncTableStart(&origin_startpos);


  oldctx = MemoryContextSwitchTo(ApplyContext);
  myslotname = pstrdup(syncslotname);
  MemoryContextSwitchTo(oldctx);

  pfree(syncslotname);
 }
 else
 {

  RepOriginId originid;
  TimeLineID startpointTLI;
  char *err;

  myslotname = MySubscription->slotname;






  if (!myslotname)
   ereport(ERROR,
     (errmsg("subscription has no replication slot set")));


  StartTransactionCommand();
  snprintf(originname, sizeof(originname), "pg_%u", MySubscription->oid);
  originid = replorigin_by_name(originname, 1);
  if (!OidIsValid(originid))
   originid = replorigin_create(originname);
  replorigin_session_setup(originid);
  replorigin_session_origin = originid;
  origin_startpos = replorigin_session_get_progress(0);
  CommitTransactionCommand();

  wrconn = walrcv_connect(MySubscription->conninfo, 1, MySubscription->name,
        &err);
  if (wrconn == ((void*)0))
   ereport(ERROR,
     (errmsg("could not connect to the publisher: %s", err)));





  (void) walrcv_identify_system(wrconn, &startpointTLI);

 }





 CacheRegisterSyscacheCallback(SUBSCRIPTIONRELMAP,
          invalidate_syncing_table_states,
          (Datum) 0);


 options.logical = 1;
 options.startpoint = origin_startpos;
 options.slotname = myslotname;
 options.proto.logical.proto_version = LOGICALREP_PROTO_VERSION_NUM;
 options.proto.logical.publication_names = MySubscription->publications;


 walrcv_startstreaming(wrconn, &options);


 LogicalRepApplyLoop(origin_startpos);

 proc_exit(0);
}
