
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct gc_arena {int dummy; } ;
struct TYPE_11__ {scalar_t__ len; } ;
struct TYPE_10__ {int to_link; TYPE_4__ buf; int n_trunc_pre_encrypt; scalar_t__ log_rw; int tun_read_bytes; } ;
struct TYPE_9__ {int tuntap; } ;
struct TYPE_8__ {scalar_t__ mode; int allow_recursive_routing; } ;
struct context {TYPE_3__ c2; TYPE_2__ c1; TYPE_1__ options; } ;


 int BLEN (TYPE_4__*) ;
 int BPTR (TYPE_4__*) ;
 int D_TUN_RW ;
 scalar_t__ MODE_POINT_TO_POINT ;
 int PERF_PROC_IN_TUN ;
 unsigned int PIPV4_CLIENT_NAT ;
 unsigned int PIPV4_PASSTOS ;
 unsigned int PIPV6_IMCP_NOHOST_CLIENT ;
 unsigned int PIP_MSSFIX ;
 int TUNNEL_TYPE (int ) ;
 int buf_reset (int *) ;
 int dmsg (int ,char*,int ) ;
 int drop_if_recursive_routing (struct context*,TYPE_4__*) ;
 int encrypt_sign (struct context*,int) ;
 int fprintf (int ,char*) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int ipv4_packet_size_verify (int ,int ,int ,char*,int *) ;
 int perf_pop () ;
 int perf_push (int ) ;
 int process_ip_header (struct context*,unsigned int,TYPE_4__*) ;
 int stderr ;

void
process_incoming_tun(struct context *c)
{
    struct gc_arena gc = gc_new();

    perf_push(PERF_PROC_IN_TUN);

    if (c->c2.buf.len > 0)
    {
        c->c2.tun_read_bytes += c->c2.buf.len;
    }
    dmsg(D_TUN_RW, "TUN READ [%d]", BLEN(&c->c2.buf));

    if (c->c2.buf.len > 0)
    {
        if ((c->options.mode == MODE_POINT_TO_POINT) && (!c->options.allow_recursive_routing))
        {
            drop_if_recursive_routing(c, &c->c2.buf);
        }




        unsigned int flags = PIPV4_PASSTOS | PIP_MSSFIX | PIPV4_CLIENT_NAT
                             | PIPV6_IMCP_NOHOST_CLIENT;
        process_ip_header(c, flags, &c->c2.buf);
    }
    if (c->c2.buf.len > 0)
    {
        encrypt_sign(c, 1);
    }
    else
    {
        buf_reset(&c->c2.to_link);
    }
    perf_pop();
    gc_free(&gc);
}
