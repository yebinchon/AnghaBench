#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  be_key; int /*<<< orphan*/  be_pid; int /*<<< orphan*/  raddr; } ;
struct TYPE_6__ {scalar_t__ sock; int /*<<< orphan*/  be_key; int /*<<< orphan*/  be_pid; int /*<<< orphan*/  raddr; } ;
typedef  int /*<<< orphan*/  SockAddr ;
typedef  TYPE_1__ PGconn ;
typedef  TYPE_2__ PGcancel ;

/* Variables and functions */
 scalar_t__ PGINVALID_SOCKET ; 
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

PGcancel *
FUNC2(PGconn *conn)
{
	PGcancel   *cancel;

	if (!conn)
		return NULL;

	if (conn->sock == PGINVALID_SOCKET)
		return NULL;

	cancel = FUNC0(sizeof(PGcancel));
	if (cancel == NULL)
		return NULL;

	FUNC1(&cancel->raddr, &conn->raddr, sizeof(SockAddr));
	cancel->be_pid = conn->be_pid;
	cancel->be_key = conn->be_key;

	return cancel;
}