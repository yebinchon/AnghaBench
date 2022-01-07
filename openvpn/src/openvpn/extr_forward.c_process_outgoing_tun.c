
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct gc_arena {int dummy; } ;
struct TYPE_15__ {scalar_t__ len; } ;
struct TYPE_13__ {int tun_write_bytes; TYPE_4__ to_tun; int frame; int n_trunc_tun_write; scalar_t__ log_rw; } ;
struct TYPE_12__ {TYPE_3__* tuntap; } ;
struct context {TYPE_2__ c2; TYPE_1__ c1; } ;
struct TYPE_14__ {int actual_name; } ;


 int BLEN (TYPE_4__*) ;
 int BPTR (TYPE_4__*) ;
 int D_LINK_ERRORS ;
 int D_TUN_RW ;
 scalar_t__ MAX_RW_SIZE_TUN (int *) ;
 int PERF_PROC_OUT_TUN ;
 int PIPV4_CLIENT_NAT ;
 int PIPV4_EXTRACT_DHCP_ROUTER ;
 int PIP_MSSFIX ;
 int PIP_OUTGOING ;
 int TUNNEL_TYPE (TYPE_3__*) ;
 int buf_reset (TYPE_4__*) ;
 int check_status (int,char*,int *,TYPE_3__*) ;
 int dmsg (int ,char*,int) ;
 int fprintf (int ,char*) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int ipv4_packet_size_verify (int ,int,int ,char*,int *) ;
 int msg (int ,char*,scalar_t__,scalar_t__,...) ;
 int perf_pop () ;
 int perf_push (int ) ;
 int process_ip_header (struct context*,int,TYPE_4__*) ;
 int register_activity (struct context*,int) ;
 int stderr ;
 int write_tun (TYPE_3__*,int ,int) ;
 int write_tun_buffered (TYPE_3__*,TYPE_4__*) ;

void
process_outgoing_tun(struct context *c)
{
    struct gc_arena gc = gc_new();





    if (c->c2.to_tun.len <= 0)
    {
        return;
    }

    perf_push(PERF_PROC_OUT_TUN);





    process_ip_header(c,
                      PIP_MSSFIX | PIPV4_EXTRACT_DHCP_ROUTER | PIPV4_CLIENT_NAT | PIP_OUTGOING,
                      &c->c2.to_tun);

    if (c->c2.to_tun.len <= MAX_RW_SIZE_TUN(&c->c2.frame))
    {



        int size;







        dmsg(D_TUN_RW, "TUN WRITE [%d]", BLEN(&c->c2.to_tun));
        size = write_tun(c->c1.tuntap, BPTR(&c->c2.to_tun), BLEN(&c->c2.to_tun));


        if (size > 0)
        {
            c->c2.tun_write_bytes += size;
        }
        check_status(size, "write to TUN/TAP", ((void*)0), c->c1.tuntap);


        if (size > 0)
        {

            if (size != BLEN(&c->c2.to_tun))
            {
                msg(D_LINK_ERRORS,
                    "TUN/TAP packet was destructively fragmented on write to %s (tried=%d,actual=%d)",
                    c->c1.tuntap->actual_name,
                    BLEN(&c->c2.to_tun),
                    size);
            }


            register_activity(c, size);
        }
    }
    else
    {




        msg(D_LINK_ERRORS, "tun packet too large on write (tried=%d,max=%d)",
            c->c2.to_tun.len,
            MAX_RW_SIZE_TUN(&c->c2.frame));
    }

    buf_reset(&c->c2.to_tun);

    perf_pop();
    gc_free(&gc);
}
