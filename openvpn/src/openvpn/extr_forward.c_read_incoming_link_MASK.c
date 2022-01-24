#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  link_socket; int /*<<< orphan*/  explicit_exit_notification_interval; int /*<<< orphan*/  from; int /*<<< orphan*/  buf; int /*<<< orphan*/  frame; TYPE_1__* buffers; } ;
struct TYPE_5__ {scalar_t__ inetd; } ;
struct context {TYPE_3__ c2; TYPE_2__ options; } ;
struct buffer {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  read_link_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  D_STREAM_ERRORS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FRAME_HEADROOM_MARKER_READ_LINK ; 
 int /*<<< orphan*/  PERF_READ_IN_LINK ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ port_share ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,struct buffer const*,int const) ; 
 int /*<<< orphan*/  FUNC11 (struct context*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 struct buffer* FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct context*) ; 

void
FUNC17(struct context *c)
{
    /*
     * Set up for recvfrom call to read datagram
     * sent to our TCP/UDP port.
     */
    int status;

    /*ASSERT (!c->c2.to_tun.len);*/

    FUNC9(PERF_READ_IN_LINK);

    c->c2.buf = c->c2.buffers->read_link_buf;
    FUNC0(FUNC2(&c->c2.buf, FUNC1(&c->c2.frame, FRAME_HEADROOM_MARKER_READ_LINK)));

    status = FUNC5(c->c2.link_socket,
                              &c->c2.buf,
                              &c->c2.from);

    if (FUNC12(c->c2.link_socket, status))
    {
#if PORT_SHARE
        if (port_share && socket_foreign_protocol_detected(c->c2.link_socket))
        {
            const struct buffer *fbuf = socket_foreign_protocol_head(c->c2.link_socket);
            const int sd = socket_foreign_protocol_sd(c->c2.link_socket);
            port_share_redirect(port_share, fbuf, sd);
            register_signal(c, SIGTERM, "port-share-redirect");
        }
        else
#endif
        {
            /* received a disconnect from a connection-oriented protocol */
            if (c->options.inetd)
            {
                FUNC11(c, SIGTERM, "connection-reset-inetd");
                FUNC7(D_STREAM_ERRORS, "Connection reset, inetd/xinetd exit [%d]", status);
            }
            else
            {
#ifdef ENABLE_OCC
                if (event_timeout_defined(&c->c2.explicit_exit_notification_interval))
                {
                    msg(D_STREAM_ERRORS, "Connection reset during exit notification period, ignoring [%d]", status);
                    management_sleep(1);
                }
                else
#endif
                {
                    FUNC11(c, SIGUSR1, "connection-reset"); /* SOFT-SIGUSR1 -- TCP connection reset */
                    FUNC7(D_STREAM_ERRORS, "Connection reset, restarting [%d]", status);
                }
            }
        }
        FUNC8();
        return;
    }

    /* check recvfrom status */
    FUNC3(status, "read", c->c2.link_socket, NULL);

    /* Remove socks header if applicable */
    FUNC16(c);

    FUNC8();
}