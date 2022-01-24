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
struct TYPE_9__ {char* data; } ;
struct TYPE_8__ {TYPE_1__* notifyTail; TYPE_1__* notifyHead; TYPE_3__ workBuffer; } ;
struct TYPE_7__ {char* relname; char* extra; int be_pid; struct TYPE_7__* next; } ;
typedef  TYPE_1__ PGnotify ;
typedef  TYPE_2__ PGconn ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int*,int,TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (char*) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7(PGconn *conn)
{
	int			be_pid;
	char	   *svname;
	int			nmlen;
	int			extralen;
	PGnotify   *newNotify;

	if (FUNC2(&be_pid, 4, conn))
		return EOF;
	if (FUNC3(&conn->workBuffer, conn))
		return EOF;
	/* must save name while getting extra string */
	svname = FUNC5(conn->workBuffer.data);
	if (!svname)
		return EOF;
	if (FUNC3(&conn->workBuffer, conn))
	{
		FUNC0(svname);
		return EOF;
	}

	/*
	 * Store the strings right after the PQnotify structure so it can all be
	 * freed at once.  We don't use NAMEDATALEN because we don't want to tie
	 * this interface to a specific server name length.
	 */
	nmlen = FUNC6(svname);
	extralen = FUNC6(conn->workBuffer.data);
	newNotify = (PGnotify *) FUNC1(sizeof(PGnotify) + nmlen + extralen + 2);
	if (newNotify)
	{
		newNotify->relname = (char *) newNotify + sizeof(PGnotify);
		FUNC4(newNotify->relname, svname);
		newNotify->extra = newNotify->relname + nmlen + 1;
		FUNC4(newNotify->extra, conn->workBuffer.data);
		newNotify->be_pid = be_pid;
		newNotify->next = NULL;
		if (conn->notifyTail)
			conn->notifyTail->next = newNotify;
		else
			conn->notifyHead = newNotify;
		conn->notifyTail = newNotify;
	}

	FUNC0(svname);
	return 0;
}