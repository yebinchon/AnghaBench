
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_12__ ;


typedef int uint8_t ;
struct link_socket_info {int dummy; } ;
struct TYPE_17__ {scalar_t__ len; } ;
struct TYPE_23__ {scalar_t__ len; } ;
struct TYPE_22__ {TYPE_12__ to_tun; TYPE_3__* buffers; TYPE_6__ buf; int max_recv_size_local; int original_recv_size; int link_read_bytes_auth; int ping_rec_interval; int es; int from; int n_trunc_post_decrypt; int frame; TYPE_7__* comp_context; int frame_fragment; scalar_t__ fragment; } ;
struct TYPE_21__ {int tuntap; } ;
struct TYPE_19__ {scalar_t__ ping_rec_timeout; } ;
struct context {TYPE_5__ c2; TYPE_4__ c1; TYPE_2__ options; } ;
struct TYPE_18__ {int (* decompress ) (TYPE_6__*,int ,TYPE_7__*,int *) ;} ;
struct TYPE_24__ {TYPE_1__ alg; } ;
struct TYPE_20__ {int read_link_buf; int decompress_buf; } ;


 int BLEN (TYPE_6__*) ;
 int BPTR (TYPE_6__*) ;
 int D_PING ;
 int TLS_MODE (struct context*) ;
 int TUNNEL_TYPE (int ) ;
 int buf_reset (TYPE_12__*) ;
 int buffer_turnover (int const*,TYPE_12__*,TYPE_6__*,int *) ;
 int dmsg (int ,char*) ;
 int event_timeout_reset (int *) ;
 int fragment_incoming (scalar_t__,TYPE_6__*,int *) ;
 int ipv4_packet_size_verify (int ,int ,int ,char*,int *) ;
 scalar_t__ is_occ_msg (TYPE_6__*) ;
 scalar_t__ is_ping_msg (TYPE_6__*) ;
 int link_socket_set_outgoing_addr (TYPE_6__*,struct link_socket_info*,int *,int *,int ) ;
 int max_int (int ,int ) ;
 int process_received_occ_msg (struct context*) ;
 int stub1 (TYPE_6__*,int ,TYPE_7__*,int *) ;
 int tuntap_defined (int ) ;

void
process_incoming_link_part2(struct context *c, struct link_socket_info *lsi, const uint8_t *orig_buf)
{
    if (c->c2.buf.len > 0)
    {
        if (!TLS_MODE(c))
        {
            link_socket_set_outgoing_addr(&c->c2.buf, lsi, &c->c2.from, ((void*)0), c->c2.es);
        }


        if (c->options.ping_rec_timeout && c->c2.buf.len > 0)
        {
            event_timeout_reset(&c->c2.ping_rec_interval);
        }


        if (c->c2.buf.len > 0)
        {
            c->c2.link_read_bytes_auth += c->c2.buf.len;
            c->c2.max_recv_size_local = max_int(c->c2.original_recv_size, c->c2.max_recv_size_local);
        }


        if (is_ping_msg(&c->c2.buf))
        {
            dmsg(D_PING, "RECEIVED PING PACKET");
            c->c2.buf.len = 0;
        }
        buffer_turnover(orig_buf, &c->c2.to_tun, &c->c2.buf, &c->c2.buffers->read_link_buf);


        if (!tuntap_defined(c->c1.tuntap))
        {
            c->c2.to_tun.len = 0;
        }
    }
    else
    {
        buf_reset(&c->c2.to_tun);
    }
}
