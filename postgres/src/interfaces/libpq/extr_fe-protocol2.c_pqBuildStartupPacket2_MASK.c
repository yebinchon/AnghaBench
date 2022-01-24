#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  pgoptions; int /*<<< orphan*/  pgtty; int /*<<< orphan*/  dbName; int /*<<< orphan*/  pguser; int /*<<< orphan*/  pversion; } ;
struct TYPE_5__ {int /*<<< orphan*/  options; int /*<<< orphan*/  tty; int /*<<< orphan*/  database; int /*<<< orphan*/  user; int /*<<< orphan*/  protoVersion; } ;
typedef  TYPE_1__ StartupPacket ;
typedef  int /*<<< orphan*/  PQEnvironmentOption ;
typedef  TYPE_2__ PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SM_DATABASE ; 
 int /*<<< orphan*/  SM_OPTIONS ; 
 int /*<<< orphan*/  SM_TTY ; 
 int /*<<< orphan*/  SM_USER ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

char *
FUNC4(PGconn *conn, int *packetlen,
					  const PQEnvironmentOption *options)
{
	StartupPacket *startpacket;

	*packetlen = sizeof(StartupPacket);
	startpacket = (StartupPacket *) FUNC1(sizeof(StartupPacket));
	if (!startpacket)
		return NULL;

	FUNC0(startpacket, 0, sizeof(StartupPacket));

	startpacket->protoVersion = FUNC2(conn->pversion);

	/* strncpy is safe here: postmaster will handle full fields correctly */
	FUNC3(startpacket->user, conn->pguser, SM_USER);
	FUNC3(startpacket->database, conn->dbName, SM_DATABASE);
	FUNC3(startpacket->tty, conn->pgtty, SM_TTY);

	if (conn->pgoptions)
		FUNC3(startpacket->options, conn->pgoptions, SM_OPTIONS);

	return (char *) startpacket;
}