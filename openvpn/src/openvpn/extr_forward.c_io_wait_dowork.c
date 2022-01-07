
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct event_set_return {int rwflags; scalar_t__ arg; } ;
struct TYPE_8__ {int event_set_status; int timeval; int event_set; int link_socket; int inotify_fd; int shaper; } ;
struct TYPE_6__ {scalar_t__ mode; scalar_t__ shaper; } ;
struct TYPE_5__ {int tuntap; } ;
struct context {TYPE_4__ c2; TYPE_3__* sig; TYPE_2__ options; TYPE_1__ c1; } ;
struct TYPE_7__ {int signal_received; } ;


 int D_EVENT_WAIT ;
 int ES_ERROR ;
 int ES_TIMEOUT ;
 unsigned int EVENT_READ ;
 unsigned int EVENT_WRITE ;
 unsigned int const IOW_CHECK_RESIDUAL ;
 unsigned int const IOW_FRAG ;
 unsigned int const IOW_MBUF ;
 unsigned int const IOW_READ_LINK ;
 unsigned int const IOW_READ_TUN ;
 unsigned int const IOW_READ_TUN_FORCE ;
 unsigned int const IOW_SHAPER ;
 unsigned int const IOW_TO_LINK ;
 unsigned int const IOW_TO_TUN ;
 unsigned int const IOW_WAIT_SIGNAL ;
 scalar_t__ MODE_SERVER ;
 int SIZE (struct event_set_return*) ;
 int SOCKET_READ ;
 scalar_t__ TO_LINK_FRAG (struct context*) ;
 scalar_t__ check_debug_level (int ) ;
 int check_status (int,char*,int *,int *) ;
 int dmsg (int ,char*,int) ;
 int event_ctl (int ,int ,unsigned int,void*) ;
 int event_reset (int ) ;
 int event_wait (int ,int *,struct event_set_return*,int ) ;
 int get_signal (int *) ;
 scalar_t__ management ;
 int management_socket_set (scalar_t__,int ,void*,int *) ;
 int max_int (int,int ) ;
 int shaper_delay (int *) ;
 int shaper_soonest_event (int *,int) ;
 int show_wait_status (struct context*) ;
 int socket_read_residual (int ) ;
 int socket_set (int ,int ,unsigned int,void*,int *) ;
 int tun_set (int ,int ,unsigned int,void*,int *) ;
 int update_time () ;
 int wait_signal (int ,void*) ;

void
io_wait_dowork(struct context *c, const unsigned int flags)
{
    unsigned int socket = 0;
    unsigned int tuntap = 0;
    struct event_set_return esr[4];


    static int socket_shift = 0;
    static int tun_shift = 2;
    static int err_shift = 4;
    event_reset(c->c2.event_set);





    if (flags & IOW_WAIT_SIGNAL)
    {
        wait_signal(c->c2.event_set, (void *)&err_shift);
    }






    if (flags & IOW_TO_LINK)
    {
        if (flags & IOW_SHAPER)
        {
            socket |= EVENT_WRITE;

        }
        else
        {
            socket |= EVENT_WRITE;
        }
    }
    else if (!((flags & IOW_FRAG) && TO_LINK_FRAG(c)))
    {
        if (flags & IOW_READ_TUN)
        {
            tuntap |= EVENT_READ;
        }
    }





    if (flags & IOW_TO_TUN)
    {
        tuntap |= EVENT_WRITE;
    }
    else
    {
        if (flags & IOW_READ_LINK)
        {
            socket |= EVENT_READ;
        }
    }




    if (flags & IOW_MBUF)
    {
        socket |= EVENT_WRITE;
    }




    if (flags & IOW_READ_TUN_FORCE)
    {
        tuntap |= EVENT_READ;
    }




    socket_set(c->c2.link_socket, c->c2.event_set, socket, (void *)&socket_shift, ((void*)0));
    tun_set(c->c1.tuntap, c->c2.event_set, tuntap, (void *)&tun_shift, ((void*)0));
    c->c2.event_set_status = ES_ERROR;

    if (!c->sig->signal_received)
    {
        if (!(flags & IOW_CHECK_RESIDUAL) || !socket_read_residual(c->c2.link_socket))
        {
            int status;
            status = event_wait(c->c2.event_set, &c->c2.timeval, esr, SIZE(esr));

            check_status(status, "event_wait", ((void*)0), ((void*)0));

            if (status > 0)
            {
                int i;
                c->c2.event_set_status = 0;
                for (i = 0; i < status; ++i)
                {
                    const struct event_set_return *e = &esr[i];
                    c->c2.event_set_status |= ((e->rwflags & 3) << *((int *)e->arg));
                }
            }
            else if (status == 0)
            {
                c->c2.event_set_status = ES_TIMEOUT;
            }
        }
        else
        {
            c->c2.event_set_status = SOCKET_READ;
        }
    }


    update_time();


    if (c->c2.event_set_status & ES_ERROR)
    {
        get_signal(&c->sig->signal_received);
    }

    dmsg(D_EVENT_WAIT, "I/O WAIT status=0x%04x", c->c2.event_set_status);
}
