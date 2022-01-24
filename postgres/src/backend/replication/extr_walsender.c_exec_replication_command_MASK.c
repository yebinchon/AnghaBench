#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ VariableShowStmt ;
typedef  int /*<<< orphan*/  TimeLineHistoryCmd ;
struct TYPE_12__ {scalar_t__ state; } ;
struct TYPE_11__ {int type; } ;
struct TYPE_10__ {int /*<<< orphan*/  kind; } ;
typedef  TYPE_2__ StartReplicationCmd ;
typedef  TYPE_3__ Node ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  DropReplicationSlotCmd ;
typedef  int /*<<< orphan*/  DestReceiver ;
typedef  int /*<<< orphan*/  CreateReplicationSlotCmd ;
typedef  int /*<<< orphan*/  BaseBackupCmd ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  DestRemote ; 
 int /*<<< orphan*/  DestRemoteSimple ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERRCODE_IN_FAILED_SQL_TRANSACTION ; 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 TYPE_7__* MyWalSnd ; 
 int /*<<< orphan*/  FUNC14 (int,char*) ; 
 int /*<<< orphan*/  REPLICATION_KIND_PHYSICAL ; 
 int /*<<< orphan*/  SQLCmd ; 
 int /*<<< orphan*/  STATE_IDLE ; 
 int /*<<< orphan*/  STATE_RUNNING ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 () ; 
#define  T_BaseBackupCmd 135 
#define  T_CreateReplicationSlotCmd 134 
#define  T_DropReplicationSlotCmd 133 
#define  T_IdentifySystemCmd 132 
#define  T_SQLCmd 131 
#define  T_StartReplicationCmd 130 
#define  T_TimeLineHistoryCmd 129 
#define  T_VariableShowStmt 128 
 scalar_t__ WALSNDSTATE_STOPPING ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (char*,...) ; 
 int /*<<< orphan*/  FUNC26 (char*,int) ; 
 scalar_t__ got_STOPPING ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 scalar_t__ log_replication_commands ; 
 int /*<<< orphan*/  output_message ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* replication_parse_result ; 
 int /*<<< orphan*/  FUNC29 (char const*) ; 
 int FUNC30 () ; 
 int /*<<< orphan*/  reply_message ; 
 int /*<<< orphan*/  tmpbuf ; 

bool
FUNC31(const char *cmd_string)
{
	int			parse_rc;
	Node	   *cmd_node;
	MemoryContext cmd_context;
	MemoryContext old_context;

	/*
	 * If WAL sender has been told that shutdown is getting close, switch its
	 * status accordingly to handle the next replication commands correctly.
	 */
	if (got_STOPPING)
		FUNC21(WALSNDSTATE_STOPPING);

	/*
	 * Throw error if in stopping mode.  We need prevent commands that could
	 * generate WAL while the shutdown checkpoint is being written.  To be
	 * safe, we just prohibit all new commands.
	 */
	if (MyWalSnd->state == WALSNDSTATE_STOPPING)
		FUNC23(ERROR,
				(FUNC25("cannot execute new commands while WAL sender is in stopping mode")));

	/*
	 * CREATE_REPLICATION_SLOT ... LOGICAL exports a snapshot until the next
	 * command arrives. Clean up the old stuff if there's anything.
	 */
	FUNC17();

	FUNC1();

	cmd_context = FUNC0(CurrentMemoryContext,
										"Replication command context",
										ALLOCSET_DEFAULT_SIZES);
	old_context = FUNC13(cmd_context);

	FUNC29(cmd_string);
	parse_rc = FUNC30();
	if (parse_rc != 0)
		FUNC23(ERROR,
				(FUNC24(ERRCODE_SYNTAX_ERROR),
				 (FUNC26("replication command parser returned %d",
								  parse_rc))));

	cmd_node = replication_parse_result;

	/*
	 * Log replication command if log_replication_commands is enabled. Even
	 * when it's disabled, log the command with DEBUG1 level for backward
	 * compatibility. Note that SQL commands are not logged here, and will be
	 * logged later if log_statement is enabled.
	 */
	if (cmd_node->type != T_SQLCmd)
		FUNC23(log_replication_commands ? LOG : DEBUG1,
				(FUNC25("received replication command: %s", cmd_string)));

	/*
	 * CREATE_REPLICATION_SLOT ... LOGICAL exports a snapshot. If it was
	 * called outside of transaction the snapshot should be cleared here.
	 */
	if (!FUNC11())
		FUNC17();

	/*
	 * For aborted transactions, don't allow anything except pure SQL, the
	 * exec_simple_query() will handle it correctly.
	 */
	if (FUNC10() && !FUNC9(cmd_node, SQLCmd))
		FUNC23(ERROR,
				(FUNC24(ERRCODE_IN_FAILED_SQL_TRANSACTION),
				 FUNC25("current transaction is aborted, "
						"commands ignored until end of transaction block")));

	FUNC1();

	/*
	 * Allocate buffers that will be used for each outgoing and incoming
	 * message.  We do this just once per command to reduce palloc overhead.
	 */
	FUNC27(&output_message);
	FUNC27(&reply_message);
	FUNC27(&tmpbuf);

	/* Report to pgstat that this process is running */
	FUNC28(STATE_RUNNING, NULL);

	switch (cmd_node->type)
	{
		case T_IdentifySystemCmd:
			FUNC8();
			break;

		case T_BaseBackupCmd:
			FUNC14(true, "BASE_BACKUP");
			FUNC15((BaseBackupCmd *) cmd_node);
			break;

		case T_CreateReplicationSlotCmd:
			FUNC4((CreateReplicationSlotCmd *) cmd_node);
			break;

		case T_DropReplicationSlotCmd:
			FUNC5((DropReplicationSlotCmd *) cmd_node);
			break;

		case T_StartReplicationCmd:
			{
				StartReplicationCmd *cmd = (StartReplicationCmd *) cmd_node;

				FUNC14(true, "START_REPLICATION");

				if (cmd->kind == REPLICATION_KIND_PHYSICAL)
					FUNC19(cmd);
				else
					FUNC18(cmd);
				break;
			}

		case T_TimeLineHistoryCmd:
			FUNC14(true, "TIMELINE_HISTORY");
			FUNC16((TimeLineHistoryCmd *) cmd_node);
			break;

		case T_VariableShowStmt:
			{
				DestReceiver *dest = FUNC3(DestRemoteSimple);
				VariableShowStmt *n = (VariableShowStmt *) cmd_node;

				/* syscache access needs a transaction environment */
				FUNC20();
				FUNC7(n->name, dest);
				FUNC2();
			}
			break;

		case T_SQLCmd:
			if (MyDatabaseId == InvalidOid)
				FUNC23(ERROR,
						(FUNC25("cannot execute SQL commands in WAL sender for physical replication")));

			/* Report to pgstat that this process is now idle */
			FUNC28(STATE_IDLE, NULL);

			/* Tell the caller that this wasn't a WalSender command. */
			return false;

		default:
			FUNC22(ERROR, "unrecognized replication command node tag: %u",
				 cmd_node->type);
	}

	/* done */
	FUNC13(old_context);
	FUNC12(cmd_context);

	/* Send CommandComplete message */
	FUNC6("SELECT", DestRemote);

	/* Report to pgstat that this process is now idle */
	FUNC28(STATE_IDLE, NULL);

	return true;
}