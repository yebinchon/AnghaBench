#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ len; } ;
struct TYPE_12__ {int occ_op; TYPE_5__ buf; int /*<<< orphan*/  occ_mtu_load_test_interval; void* max_send_size_local; void* max_send_size_remote; void* max_recv_size_local; void* max_recv_size_remote; int /*<<< orphan*/  occ_interval; int /*<<< orphan*/  options_string_remote; void* occ_mtu_load_size; } ;
struct TYPE_9__ {int /*<<< orphan*/  proto; int /*<<< orphan*/  fragment; } ;
struct TYPE_10__ {TYPE_1__ ce; int /*<<< orphan*/  mtu_test; int /*<<< orphan*/  occ; } ;
struct context {TYPE_4__ c2; TYPE_3__* sig; TYPE_2__ options; } ;
struct TYPE_11__ {char* signal_text; int /*<<< orphan*/  signal_received; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  D_PACKET_CONTENT ; 
 int /*<<< orphan*/  M_INFO ; 
#define  OCC_EXIT 133 
 int OCC_MTU_LOAD ; 
#define  OCC_MTU_LOAD_REQUEST 132 
#define  OCC_MTU_REPLY 131 
#define  OCC_MTU_REQUEST 130 
#define  OCC_REPLY 129 
#define  OCC_REQUEST 128 
 int /*<<< orphan*/  OCC_STRING_SIZE ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC2 (struct context*) ; 
 void* TUN_MTU_MIN ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (TYPE_5__*) ; 
 int FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,void*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

void
FUNC12(struct context *c)
{
    FUNC0(FUNC3(&c->c2.buf, OCC_STRING_SIZE));
    switch (FUNC5(&c->c2.buf))
    {
        case OCC_REQUEST:
            FUNC6(D_PACKET_CONTENT, "RECEIVED OCC_REQUEST");
            c->c2.occ_op = OCC_REPLY;
            break;

        case OCC_MTU_REQUEST:
            FUNC6(D_PACKET_CONTENT, "RECEIVED OCC_MTU_REQUEST");
            c->c2.occ_op = OCC_MTU_REPLY;
            break;

        case OCC_MTU_LOAD_REQUEST:
            FUNC6(D_PACKET_CONTENT, "RECEIVED OCC_MTU_LOAD_REQUEST");
            c->c2.occ_mtu_load_size = FUNC4(&c->c2.buf);
            if (c->c2.occ_mtu_load_size >= 0)
            {
                c->c2.occ_op = OCC_MTU_LOAD;
            }
            break;

        case OCC_REPLY:
            FUNC6(D_PACKET_CONTENT, "RECEIVED OCC_REPLY");
            if (c->options.occ && !FUNC2(c) && c->c2.options_string_remote)
            {
                if (!FUNC9((char *) FUNC1(&c->c2.buf),
                                            c->c2.options_string_remote,
                                            c->c2.buf.len))
                {
                    FUNC10((char *) FUNC1(&c->c2.buf),
                                         c->c2.options_string_remote,
                                         c->c2.buf.len);
                }
            }
            FUNC7(&c->c2.occ_interval);
            break;

        case OCC_MTU_REPLY:
            FUNC6(D_PACKET_CONTENT, "RECEIVED OCC_MTU_REPLY");
            c->c2.max_recv_size_remote = FUNC4(&c->c2.buf);
            c->c2.max_send_size_remote = FUNC4(&c->c2.buf);
            if (c->options.mtu_test
                && c->c2.max_recv_size_remote > 0
                && c->c2.max_send_size_remote > 0)
            {
                FUNC8(M_INFO, "NOTE: Empirical MTU test completed [Tried,Actual] local->remote=[%d,%d] remote->local=[%d,%d]",
                    c->c2.max_send_size_local,
                    c->c2.max_recv_size_remote,
                    c->c2.max_send_size_remote,
                    c->c2.max_recv_size_local);
                if (!c->options.ce.fragment
                    && (FUNC11(c->options.ce.proto))
                    && c->c2.max_send_size_local > TUN_MTU_MIN
                    && (c->c2.max_recv_size_remote < c->c2.max_send_size_local
                        || c->c2.max_recv_size_local < c->c2.max_send_size_remote))
                {
                    FUNC8(M_INFO, "NOTE: This connection is unable to accommodate a UDP packet size of %d. Consider using --fragment or --mssfix options as a workaround.",
                        c->c2.max_send_size_local);
                }
            }
            FUNC7(&c->c2.occ_mtu_load_test_interval);
            break;

        case OCC_EXIT:
            FUNC6(D_PACKET_CONTENT, "RECEIVED OCC_EXIT");
            c->sig->signal_received = SIGTERM;
            c->sig->signal_text = "remote-exit";
            break;
    }
    c->c2.buf.len = 0; /* don't pass packet on */
}