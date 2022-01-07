
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int name; } ;
typedef TYPE_1__ VariableShowStmt ;
typedef int TimeLineHistoryCmd ;
struct TYPE_12__ {scalar_t__ state; } ;
struct TYPE_11__ {int type; } ;
struct TYPE_10__ {int kind; } ;
typedef TYPE_2__ StartReplicationCmd ;
typedef TYPE_3__ Node ;
typedef int MemoryContext ;
typedef int DropReplicationSlotCmd ;
typedef int DestReceiver ;
typedef int CreateReplicationSlotCmd ;
typedef int BaseBackupCmd ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int CHECK_FOR_INTERRUPTS () ;
 int CommitTransactionCommand () ;
 int * CreateDestReceiver (int ) ;
 int CreateReplicationSlot (int *) ;
 int CurrentMemoryContext ;
 int DEBUG1 ;
 int DestRemote ;
 int DestRemoteSimple ;
 int DropReplicationSlot (int *) ;
 int ERRCODE_IN_FAILED_SQL_TRANSACTION ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 int EndCommand (char*,int ) ;
 int GetPGVariable (int ,int *) ;
 int IdentifySystem () ;
 int InvalidOid ;
 int IsA (TYPE_3__*,int ) ;
 scalar_t__ IsAbortedTransactionBlockState () ;
 int IsTransactionBlock () ;
 int LOG ;
 int MemoryContextDelete (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int MyDatabaseId ;
 TYPE_7__* MyWalSnd ;
 int PreventInTransactionBlock (int,char*) ;
 int REPLICATION_KIND_PHYSICAL ;
 int SQLCmd ;
 int STATE_IDLE ;
 int STATE_RUNNING ;
 int SendBaseBackup (int *) ;
 int SendTimeLineHistory (int *) ;
 int SnapBuildClearExportedSnapshot () ;
 int StartLogicalReplication (TYPE_2__*) ;
 int StartReplication (TYPE_2__*) ;
 int StartTransactionCommand () ;
 scalar_t__ WALSNDSTATE_STOPPING ;
 int WalSndSetState (scalar_t__) ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int errmsg_internal (char*,int) ;
 scalar_t__ got_STOPPING ;
 int initStringInfo (int *) ;
 scalar_t__ log_replication_commands ;
 int output_message ;
 int pgstat_report_activity (int ,int *) ;
 TYPE_3__* replication_parse_result ;
 int replication_scanner_init (char const*) ;
 int replication_yyparse () ;
 int reply_message ;
 int tmpbuf ;

bool
exec_replication_command(const char *cmd_string)
{
 int parse_rc;
 Node *cmd_node;
 MemoryContext cmd_context;
 MemoryContext old_context;





 if (got_STOPPING)
  WalSndSetState(WALSNDSTATE_STOPPING);






 if (MyWalSnd->state == WALSNDSTATE_STOPPING)
  ereport(ERROR,
    (errmsg("cannot execute new commands while WAL sender is in stopping mode")));





 SnapBuildClearExportedSnapshot();

 CHECK_FOR_INTERRUPTS();

 cmd_context = AllocSetContextCreate(CurrentMemoryContext,
          "Replication command context",
          ALLOCSET_DEFAULT_SIZES);
 old_context = MemoryContextSwitchTo(cmd_context);

 replication_scanner_init(cmd_string);
 parse_rc = replication_yyparse();
 if (parse_rc != 0)
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),
     (errmsg_internal("replication command parser returned %d",
          parse_rc))));

 cmd_node = replication_parse_result;







 if (cmd_node->type != 131)
  ereport(log_replication_commands ? LOG : DEBUG1,
    (errmsg("received replication command: %s", cmd_string)));





 if (!IsTransactionBlock())
  SnapBuildClearExportedSnapshot();





 if (IsAbortedTransactionBlockState() && !IsA(cmd_node, SQLCmd))
  ereport(ERROR,
    (errcode(ERRCODE_IN_FAILED_SQL_TRANSACTION),
     errmsg("current transaction is aborted, "
      "commands ignored until end of transaction block")));

 CHECK_FOR_INTERRUPTS();





 initStringInfo(&output_message);
 initStringInfo(&reply_message);
 initStringInfo(&tmpbuf);


 pgstat_report_activity(STATE_RUNNING, ((void*)0));

 switch (cmd_node->type)
 {
  case 132:
   IdentifySystem();
   break;

  case 135:
   PreventInTransactionBlock(1, "BASE_BACKUP");
   SendBaseBackup((BaseBackupCmd *) cmd_node);
   break;

  case 134:
   CreateReplicationSlot((CreateReplicationSlotCmd *) cmd_node);
   break;

  case 133:
   DropReplicationSlot((DropReplicationSlotCmd *) cmd_node);
   break;

  case 130:
   {
    StartReplicationCmd *cmd = (StartReplicationCmd *) cmd_node;

    PreventInTransactionBlock(1, "START_REPLICATION");

    if (cmd->kind == REPLICATION_KIND_PHYSICAL)
     StartReplication(cmd);
    else
     StartLogicalReplication(cmd);
    break;
   }

  case 129:
   PreventInTransactionBlock(1, "TIMELINE_HISTORY");
   SendTimeLineHistory((TimeLineHistoryCmd *) cmd_node);
   break;

  case 128:
   {
    DestReceiver *dest = CreateDestReceiver(DestRemoteSimple);
    VariableShowStmt *n = (VariableShowStmt *) cmd_node;


    StartTransactionCommand();
    GetPGVariable(n->name, dest);
    CommitTransactionCommand();
   }
   break;

  case 131:
   if (MyDatabaseId == InvalidOid)
    ereport(ERROR,
      (errmsg("cannot execute SQL commands in WAL sender for physical replication")));


   pgstat_report_activity(STATE_IDLE, ((void*)0));


   return 0;

  default:
   elog(ERROR, "unrecognized replication command node tag: %u",
     cmd_node->type);
 }


 MemoryContextSwitchTo(old_context);
 MemoryContextDelete(cmd_context);


 EndCommand("SELECT", DestRemote);


 pgstat_report_activity(STATE_IDLE, ((void*)0));

 return 1;
}
