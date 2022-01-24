#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct link_socket {int /*<<< orphan*/  stream_buf_data; int /*<<< orphan*/  stream_buf; void* ctrl_sd; int /*<<< orphan*/  writes; int /*<<< orphan*/  reads; void* sd; int /*<<< orphan*/  listen_handle; int /*<<< orphan*/  gremlin; } ;

/* Variables and functions */
 int D_LOW ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int M_ERRNO ; 
 int M_WARN ; 
 void* SOCKET_UNDEFINED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct link_socket*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 scalar_t__ FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void
FUNC9(struct link_socket *sock)
{
    if (sock)
    {
#ifdef ENABLE_DEBUG
        const int gremlin = GREMLIN_CONNECTION_FLOOD_LEVEL(sock->gremlin);
#else
        const int gremlin = 0;
#endif

        if (FUNC7(sock->sd))
        {
#ifdef _WIN32
            close_net_event_win32(&sock->listen_handle, sock->sd, 0);
#endif
            if (!gremlin)
            {
                FUNC4(D_LOW, "TCP/UDP: Closing socket");
                if (FUNC5(sock->sd))
                {
                    FUNC4(M_WARN | M_ERRNO, "TCP/UDP: Close Socket failed");
                }
            }
            sock->sd = SOCKET_UNDEFINED;
#ifdef _WIN32
            if (!gremlin)
            {
                overlapped_io_close(&sock->reads);
                overlapped_io_close(&sock->writes);
            }
#endif
        }

        if (FUNC7(sock->ctrl_sd))
        {
            if (FUNC5(sock->ctrl_sd))
            {
                FUNC4(M_WARN | M_ERRNO, "TCP/UDP: Close Socket (ctrl_sd) failed");
            }
            sock->ctrl_sd = SOCKET_UNDEFINED;
        }

        FUNC8(&sock->stream_buf);
        FUNC3(&sock->stream_buf_data);
        if (!gremlin)
        {
            FUNC2(sock);
        }
    }
}