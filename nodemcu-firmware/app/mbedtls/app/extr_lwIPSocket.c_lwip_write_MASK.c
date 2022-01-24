#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* conn; } ;
typedef  TYPE_2__ lwIP_sock ;
struct TYPE_4__ {int state; } ;

/* Variables and functions */
#define  NETCONN_STATE_ESTABLISHED 128 
 TYPE_2__* FUNC0 (int) ; 
 int FUNC1 (int,void const*,size_t,int /*<<< orphan*/ ) ; 

int FUNC2(int s, const void *data, size_t size)
{
    lwIP_sock *sock = NULL;
    int is_tcp = 0;
    size_t bytes_free = 0;

    sock = FUNC0(s);
    if (!sock)
    {
        return -1;
    }

    if (sock->conn != NULL)
    {
        switch (sock->conn->state)
        {
            case NETCONN_STATE_ESTABLISHED:
               return FUNC1(s, data, size, 0);
            default:
                return -1;
        }
    }
    else
    {
        return -1;
    }
}