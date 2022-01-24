#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct gc_arena {int dummy; } ;
struct TYPE_11__ {scalar_t__ len; } ;
struct TYPE_10__ {int /*<<< orphan*/  to_link; TYPE_4__ buf; int /*<<< orphan*/  n_trunc_pre_encrypt; scalar_t__ log_rw; int /*<<< orphan*/  tun_read_bytes; } ;
struct TYPE_9__ {int /*<<< orphan*/  tuntap; } ;
struct TYPE_8__ {scalar_t__ mode; int /*<<< orphan*/  allow_recursive_routing; } ;
struct context {TYPE_3__ c2; TYPE_2__ c1; TYPE_1__ options; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  D_TUN_RW ; 
 scalar_t__ MODE_POINT_TO_POINT ; 
 int /*<<< orphan*/  PERF_PROC_IN_TUN ; 
 unsigned int PIPV4_CLIENT_NAT ; 
 unsigned int PIPV4_PASSTOS ; 
 unsigned int PIPV6_IMCP_NOHOST_CLIENT ; 
 unsigned int PIP_MSSFIX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct context*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (struct context*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct gc_arena*) ; 
 struct gc_arena FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct context*,unsigned int,TYPE_4__*) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC14(struct context *c)
{
    struct gc_arena gc = FUNC9();

    FUNC12(PERF_PROC_IN_TUN);

    if (c->c2.buf.len > 0)
    {
        c->c2.tun_read_bytes += c->c2.buf.len;
    }

#ifdef LOG_RW
    if (c->c2.log_rw && c->c2.buf.len > 0)
    {
        fprintf(stderr, "r");
    }
#endif

    /* Show packet content */
    FUNC4(D_TUN_RW, "TUN READ [%d]", FUNC0(&c->c2.buf));

    if (c->c2.buf.len > 0)
    {
        if ((c->options.mode == MODE_POINT_TO_POINT) && (!c->options.allow_recursive_routing))
        {
            FUNC5(c, &c->c2.buf);
        }
        /*
         * The --passtos and --mssfix options require
         * us to examine the IP header (IPv4 or IPv6).
         */
        unsigned int flags = PIPV4_PASSTOS | PIP_MSSFIX | PIPV4_CLIENT_NAT
                             | PIPV6_IMCP_NOHOST_CLIENT;
        FUNC13(c, flags, &c->c2.buf);

#ifdef PACKET_TRUNCATION_CHECK
        /* if (c->c2.buf.len > 1) --c->c2.buf.len; */
        ipv4_packet_size_verify(BPTR(&c->c2.buf),
                                BLEN(&c->c2.buf),
                                TUNNEL_TYPE(c->c1.tuntap),
                                "PRE_ENCRYPT",
                                &c->c2.n_trunc_pre_encrypt);
#endif

    }
    if (c->c2.buf.len > 0)
    {
        FUNC6(c, true);
    }
    else
    {
        FUNC3(&c->c2.to_link);
    }
    FUNC11();
    FUNC8(&gc);
}