#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16_t ;
struct tcp_pcb {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ lwIP_netconn ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  NETCONN_EVENT_SEND ; 
 int /*<<< orphan*/  NETCONN_STATE_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static err_t FUNC3(void *arg, struct tcp_pcb *pcb, u16_t len)
{
    lwIP_netconn *conn = arg;
    FUNC1(conn);
    conn->state = NETCONN_STATE_ESTABLISHED;
	FUNC2(FUNC0(conn), NETCONN_EVENT_SEND, len);
    return ERR_OK;
}