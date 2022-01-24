#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  tuntap; } ;
struct TYPE_14__ {int /*<<< orphan*/  len; } ;
struct TYPE_12__ {TYPE_5__ buf; int /*<<< orphan*/  n_trunc_tun_read; int /*<<< orphan*/  frame; TYPE_1__* buffers; } ;
struct TYPE_11__ {int restart_sleep_seconds; } ;
struct context {TYPE_4__ c1; TYPE_3__ c2; TYPE_2__ persist; } ;
struct TYPE_10__ {TYPE_5__ read_tun_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_INFO ; 
 int /*<<< orphan*/  PERF_READ_IN_TUN ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC15 (struct context*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 

void
FUNC18(struct context *c)
{
    /*
     * Setup for read() call on TUN/TAP device.
     */
    /*ASSERT (!c->c2.to_link.len);*/

    FUNC12(PERF_READ_IN_TUN);

    c->c2.buf = c->c2.buffers->read_tun_buf;
#ifdef _WIN32
    read_tun_buffered(c->c1.tuntap, &c->c2.buf);
#else
    FUNC0(FUNC6(&c->c2.buf, FUNC3(&c->c2.frame)));
    FUNC0(FUNC7(&c->c2.buf, FUNC4(&c->c2.frame)));
    c->c2.buf.len = FUNC13(c->c1.tuntap, FUNC2(&c->c2.buf), FUNC4(&c->c2.frame));
#endif

#ifdef PACKET_TRUNCATION_CHECK
    ipv4_packet_size_verify(BPTR(&c->c2.buf),
                            BLEN(&c->c2.buf),
                            TUNNEL_TYPE(c->c1.tuntap),
                            "READ_TUN",
                            &c->c2.n_trunc_tun_read);
#endif

    /* Was TUN/TAP interface stopped? */
    if (FUNC17(c->c2.buf.len))
    {
        FUNC15(c, SIGTERM, "tun-stop");
        FUNC10(M_INFO, "TUN/TAP interface has been stopped, exiting");
        FUNC11();
        return;
    }

    /* Was TUN/TAP I/O operation aborted? */
    if (FUNC16(c->c2.buf.len))
    {
        FUNC15(c, SIGHUP, "tun-abort");
        c->persist.restart_sleep_seconds = 10;
        FUNC10(M_INFO, "TUN/TAP I/O operation aborted, restarting");
        FUNC11();
        return;
    }

    /* Check the status return from read() */
    FUNC8(c->c2.buf.len, "read from TUN/TAP", NULL, c->c1.tuntap);

    FUNC11();
}