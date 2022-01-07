
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int tuntap; } ;
struct TYPE_14__ {int len; } ;
struct TYPE_12__ {TYPE_5__ buf; int n_trunc_tun_read; int frame; TYPE_1__* buffers; } ;
struct TYPE_11__ {int restart_sleep_seconds; } ;
struct context {TYPE_4__ c1; TYPE_3__ c2; TYPE_2__ persist; } ;
struct TYPE_10__ {TYPE_5__ read_tun_buf; } ;


 int ASSERT (int ) ;
 int BLEN (TYPE_5__*) ;
 int BPTR (TYPE_5__*) ;
 int FRAME_HEADROOM (int *) ;
 int MAX_RW_SIZE_TUN (int *) ;
 int M_INFO ;
 int PERF_READ_IN_TUN ;
 int SIGHUP ;
 int SIGTERM ;
 int TUNNEL_TYPE (int ) ;
 int buf_init (TYPE_5__*,int ) ;
 int buf_safe (TYPE_5__*,int ) ;
 int check_status (int ,char*,int *,int ) ;
 int ipv4_packet_size_verify (int ,int ,int ,char*,int *) ;
 int msg (int ,char*) ;
 int perf_pop () ;
 int perf_push (int ) ;
 int read_tun (int ,int ,int ) ;
 int read_tun_buffered (int ,TYPE_5__*) ;
 int register_signal (struct context*,int ,char*) ;
 scalar_t__ tuntap_abort (int ) ;
 scalar_t__ tuntap_stop (int ) ;

void
read_incoming_tun(struct context *c)
{





    perf_push(PERF_READ_IN_TUN);

    c->c2.buf = c->c2.buffers->read_tun_buf;



    ASSERT(buf_init(&c->c2.buf, FRAME_HEADROOM(&c->c2.frame)));
    ASSERT(buf_safe(&c->c2.buf, MAX_RW_SIZE_TUN(&c->c2.frame)));
    c->c2.buf.len = read_tun(c->c1.tuntap, BPTR(&c->c2.buf), MAX_RW_SIZE_TUN(&c->c2.frame));
    if (tuntap_stop(c->c2.buf.len))
    {
        register_signal(c, SIGTERM, "tun-stop");
        msg(M_INFO, "TUN/TAP interface has been stopped, exiting");
        perf_pop();
        return;
    }


    if (tuntap_abort(c->c2.buf.len))
    {
        register_signal(c, SIGHUP, "tun-abort");
        c->persist.restart_sleep_seconds = 10;
        msg(M_INFO, "TUN/TAP I/O operation aborted, restarting");
        perf_pop();
        return;
    }


    check_status(c->c2.buf.len, "read from TUN/TAP", ((void*)0), c->c1.tuntap);

    perf_pop();
}
