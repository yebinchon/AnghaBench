#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_4__* conn; } ;
typedef  TYPE_1__ lwIP_sock ;
struct TYPE_10__ {scalar_t__ state; TYPE_2__* tcp; } ;
struct TYPE_9__ {scalar_t__ state; } ;

/* Variables and functions */
 int ERR_OK ; 
 scalar_t__ LISTEN ; 
 scalar_t__ NETCONN_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/ * recv_tcp ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 

int FUNC6(int s)
{
    lwIP_sock *sock = NULL;
    int err = 0;

    sock = FUNC2(s);
    if (!sock)
    {
        return -1;
    }

    /*Do not set callback function when tcp->state is LISTEN.
    Avoid memory overlap when conn->tcp changes from
    struct tcp_bcb to struct tcp_pcb_listen after lwip_listen.*/
    if (sock->conn->tcp->state != LISTEN)
    {
        if (sock->conn->state != NETCONN_STATE_ERROR){
            FUNC5(sock->conn->tcp, NULL);
            err = FUNC4(sock->conn->tcp);

            if (err != ERR_OK)
            {
                /* closing failed, try again later */
                FUNC5(sock->conn->tcp, recv_tcp);
                return -1;
            }
        }
        /* closing succeeded */
        FUNC3(sock->conn);
    } else {
        FUNC4(sock->conn->tcp);
    }
    FUNC0(sock->conn);
    FUNC1(sock);
    return ERR_OK;
}