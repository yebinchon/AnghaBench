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
typedef  int /*<<< orphan*/  uint32 ;
typedef  TYPE_2__* pmbedtls_msg ;
struct TYPE_7__ {TYPE_1__* pespconn; int /*<<< orphan*/  fd; struct TYPE_7__* pssl; } ;
typedef  TYPE_2__ espconn_msg ;
struct TYPE_6__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESPCONN_CLOSE ; 
 int /*<<< orphan*/  NETCONN_EVENT_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lwIPThreadPrio ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(espconn_msg *Threadmsg)
{
	FUNC1(Threadmsg);
	pmbedtls_msg mbedTLSMsg = Threadmsg->pssl;
	FUNC1(mbedTLSMsg);
	FUNC2(&mbedTLSMsg->fd);
	Threadmsg->pespconn->state = ESPCONN_CLOSE;
	FUNC0(lwIPThreadPrio, NETCONN_EVENT_CLOSE, (uint32)Threadmsg);
}