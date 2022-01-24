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
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;
struct TYPE_5__ {TYPE_1__* conn; } ;
typedef  TYPE_2__ lwIP_sock ;
struct TYPE_4__ {scalar_t__ state; int /*<<< orphan*/  readbuf; } ;

/* Variables and functions */
 scalar_t__ NETCONN_STATE_ESTABLISHED ; 
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,size_t) ; 

int FUNC4(int s, void *mem, size_t len, int flags, struct sockaddr *from, socklen_t *fromlen)
{
    lwIP_sock *sock = NULL;
    size_t bytes_used = 0;
    int is_tcp = 0;
    FUNC1(mem);

    sock = FUNC0(s);
    if (!sock)
    {
        return -1;
    }

    if (sock->conn != NULL)
    {
        if (sock->conn->state == NETCONN_STATE_ESTABLISHED)
        {
            bytes_used = FUNC2(sock->conn->readbuf);
            if (bytes_used != 0)
            {
                if (len > bytes_used)
                {
                    len = bytes_used;
                }
                FUNC3(mem, sock->conn->readbuf, len);
                return len;
            }
            else
            {
                return 0;
            }
        }
        else
        {
            return 0;
        }
    }
    else
    {
        return -1;
    }
}