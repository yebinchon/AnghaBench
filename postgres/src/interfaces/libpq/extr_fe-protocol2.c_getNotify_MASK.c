#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  data; } ;
struct TYPE_8__ {TYPE_1__* notifyTail; TYPE_1__* notifyHead; TYPE_3__ workBuffer; } ;
struct TYPE_7__ {char* relname; char* extra; int be_pid; struct TYPE_7__* next; } ;
typedef  TYPE_1__ PGnotify ;
typedef  TYPE_2__ PGconn ;

/* Variables and functions */
 int EOF ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int*,int,TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(PGconn *conn)
{
	int			be_pid;
	int			nmlen;
	PGnotify   *newNotify;

	if (FUNC1(&be_pid, 4, conn))
		return EOF;
	if (FUNC2(&conn->workBuffer, conn))
		return EOF;

	/*
	 * Store the relation name right after the PQnotify structure so it can
	 * all be freed at once.  We don't use NAMEDATALEN because we don't want
	 * to tie this interface to a specific server name length.
	 */
	nmlen = FUNC4(conn->workBuffer.data);
	newNotify = (PGnotify *) FUNC0(sizeof(PGnotify) + nmlen + 1);
	if (newNotify)
	{
		newNotify->relname = (char *) newNotify + sizeof(PGnotify);
		FUNC3(newNotify->relname, conn->workBuffer.data);
		/* fake up an empty-string extra field */
		newNotify->extra = newNotify->relname + nmlen;
		newNotify->be_pid = be_pid;
		newNotify->next = NULL;
		if (conn->notifyTail)
			conn->notifyTail->next = newNotify;
		else
			conn->notifyHead = newNotify;
		conn->notifyTail = newNotify;
	}

	return 0;
}