#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_16__ {scalar_t__ logical; int /*<<< orphan*/  streamConn; } ;
typedef  TYPE_4__ WalReceiverConn ;
struct TYPE_14__ {char* startpointTLI; } ;
struct TYPE_13__ {char* proto_version; int /*<<< orphan*/ * publication_names; } ;
struct TYPE_15__ {TYPE_2__ physical; TYPE_1__ logical; } ;
struct TYPE_17__ {scalar_t__ logical; char* slotname; int startpoint; TYPE_3__ proto; } ;
typedef  TYPE_5__ WalRcvStreamOptions ;
struct TYPE_18__ {char* data; } ;
typedef  TYPE_6__ StringInfoData ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ PGRES_COMMAND_OK ; 
 scalar_t__ PGRES_COPY_BOTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,char) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 char* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

__attribute__((used)) static bool
FUNC17(WalReceiverConn *conn,
						const WalRcvStreamOptions *options)
{
	StringInfoData cmd;
	PGresult   *res;

	FUNC0(options->logical == conn->logical);
	FUNC0(options->slotname || !options->logical);

	FUNC11(&cmd);

	/* Build the command. */
	FUNC8(&cmd, "START_REPLICATION");
	if (options->slotname != NULL)
		FUNC6(&cmd, " SLOT \"%s\"",
						 options->slotname);

	if (options->logical)
		FUNC8(&cmd, " LOGICAL");

	FUNC6(&cmd, " %X/%X",
					 (uint32) (options->startpoint >> 32),
					 (uint32) options->startpoint);

	/*
	 * Additional options are different depending on if we are doing logical
	 * or physical replication.
	 */
	if (options->logical)
	{
		char	   *pubnames_str;
		List	   *pubnames;
		char	   *pubnames_literal;

		FUNC8(&cmd, " (");

		FUNC6(&cmd, "proto_version '%u'",
						 options->proto.logical.proto_version);

		pubnames = options->proto.logical.publication_names;
		pubnames_str = FUNC15(conn->streamConn, pubnames);
		if (!pubnames_str)
			FUNC9(ERROR,
					(FUNC10("could not start WAL streaming: %s",
							FUNC13(FUNC2(conn->streamConn)))));
		pubnames_literal = FUNC3(conn->streamConn, pubnames_str,
										   FUNC16(pubnames_str));
		if (!pubnames_literal)
			FUNC9(ERROR,
					(FUNC10("could not start WAL streaming: %s",
							FUNC13(FUNC2(conn->streamConn)))));
		FUNC6(&cmd, ", publication_names %s", pubnames_literal);
		FUNC4(pubnames_literal);
		FUNC14(pubnames_str);

		FUNC7(&cmd, ')');
	}
	else
		FUNC6(&cmd, " TIMELINE %u",
						 options->proto.physical.startpointTLI);

	/* Start streaming. */
	res = FUNC12(conn->streamConn, cmd.data);
	FUNC14(cmd.data);

	if (FUNC5(res) == PGRES_COMMAND_OK)
	{
		FUNC1(res);
		return false;
	}
	else if (FUNC5(res) != PGRES_COPY_BOTH)
	{
		FUNC1(res);
		FUNC9(ERROR,
				(FUNC10("could not start WAL streaming: %s",
						FUNC13(FUNC2(conn->streamConn)))));
	}
	FUNC1(res);
	return true;
}