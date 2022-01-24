#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct link_socket_info {int dummy; } ;
struct TYPE_17__ {scalar_t__ len; } ;
struct TYPE_23__ {scalar_t__ len; } ;
struct TYPE_22__ {TYPE_12__ to_tun; TYPE_3__* buffers; TYPE_6__ buf; int /*<<< orphan*/  max_recv_size_local; int /*<<< orphan*/  original_recv_size; int /*<<< orphan*/  link_read_bytes_auth; int /*<<< orphan*/  ping_rec_interval; int /*<<< orphan*/  es; int /*<<< orphan*/  from; int /*<<< orphan*/  n_trunc_post_decrypt; int /*<<< orphan*/  frame; TYPE_7__* comp_context; int /*<<< orphan*/  frame_fragment; scalar_t__ fragment; } ;
struct TYPE_21__ {int /*<<< orphan*/  tuntap; } ;
struct TYPE_19__ {scalar_t__ ping_rec_timeout; } ;
struct context {TYPE_5__ c2; TYPE_4__ c1; TYPE_2__ options; } ;
struct TYPE_18__ {int /*<<< orphan*/  (* decompress ) (TYPE_6__*,int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_24__ {TYPE_1__ alg; } ;
struct TYPE_20__ {int /*<<< orphan*/  read_link_buf; int /*<<< orphan*/  decompress_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  D_PING ; 
 int /*<<< orphan*/  FUNC2 (struct context*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,TYPE_12__*,TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_6__*) ; 
 scalar_t__ FUNC11 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,struct link_socket_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct context*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*,int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

void
FUNC17(struct context *c, struct link_socket_info *lsi, const uint8_t *orig_buf)
{
    if (c->c2.buf.len > 0)
    {
#ifdef ENABLE_FRAGMENT
        if (c->c2.fragment)
        {
            fragment_incoming(c->c2.fragment, &c->c2.buf, &c->c2.frame_fragment);
        }
#endif

#ifdef USE_COMP
        /* decompress the incoming packet */
        if (c->c2.comp_context)
        {
            (*c->c2.comp_context->alg.decompress)(&c->c2.buf, c->c2.buffers->decompress_buf, c->c2.comp_context, &c->c2.frame);
        }
#endif

#ifdef PACKET_TRUNCATION_CHECK
        /* if (c->c2.buf.len > 1) --c->c2.buf.len; */
        ipv4_packet_size_verify(BPTR(&c->c2.buf),
                                BLEN(&c->c2.buf),
                                TUNNEL_TYPE(c->c1.tuntap),
                                "POST_DECRYPT",
                                &c->c2.n_trunc_post_decrypt);
#endif

        /*
         * Set our "official" outgoing address, since
         * if buf.len is non-zero, we know the packet
         * authenticated.  In TLS mode we do nothing
         * because TLS mode takes care of source address
         * authentication.
         *
         * Also, update the persisted version of our packet-id.
         */
        if (!FUNC2(c))
        {
            FUNC12(&c->c2.buf, lsi, &c->c2.from, NULL, c->c2.es);
        }

        /* reset packet received timer */
        if (c->options.ping_rec_timeout && c->c2.buf.len > 0)
        {
            FUNC7(&c->c2.ping_rec_interval);
        }

        /* increment authenticated receive byte count */
        if (c->c2.buf.len > 0)
        {
            c->c2.link_read_bytes_auth += c->c2.buf.len;
            c->c2.max_recv_size_local = FUNC13(c->c2.original_recv_size, c->c2.max_recv_size_local);
        }

        /* Did we just receive an openvpn ping packet? */
        if (FUNC11(&c->c2.buf))
        {
            FUNC6(D_PING, "RECEIVED PING PACKET");
            c->c2.buf.len = 0; /* drop packet */
        }

#ifdef ENABLE_OCC
        /* Did we just receive an OCC packet? */
        if (is_occ_msg(&c->c2.buf))
        {
            process_received_occ_msg(c);
        }
#endif

        FUNC5(orig_buf, &c->c2.to_tun, &c->c2.buf, &c->c2.buffers->read_link_buf);

        /* to_tun defined + unopened tuntap can cause deadlock */
        if (!FUNC16(c->c1.tuntap))
        {
            c->c2.to_tun.len = 0;
        }
    }
    else
    {
        FUNC4(&c->c2.to_tun);
    }
}