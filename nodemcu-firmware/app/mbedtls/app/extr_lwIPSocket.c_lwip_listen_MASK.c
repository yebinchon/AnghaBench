#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  conn; } ;
typedef  TYPE_1__ lwIP_sock ;
typedef  scalar_t__ err_t ;

/* Variables and functions */
 scalar_t__ ERR_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 TYPE_1__* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(int s, int backlog)
{
    lwIP_sock *sock = NULL;
    err_t err = ERR_OK;
    sock = FUNC1(s);
    if (!sock)
    {
        return -1;
    }
    err = FUNC2(sock->conn);
    if (err != ERR_OK)
    {
        FUNC0("lwip_connect(%d) failed, err=%d\n", s, err);
        return -1;
    }

    FUNC0("lwip_connect(%d) succeeded\n", s);

    return ERR_OK;
}