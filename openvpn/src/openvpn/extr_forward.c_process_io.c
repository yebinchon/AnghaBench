
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int event_set_status; } ;
struct context {TYPE_1__ c2; } ;


 int ASSERT (int ) ;
 int IS_SIG (struct context*) ;
 unsigned int const MANAGEMENT_READ ;
 unsigned int const MANAGEMENT_WRITE ;
 unsigned int const SOCKET_READ ;
 unsigned int const SOCKET_WRITE ;
 unsigned int const TUN_READ ;
 unsigned int const TUN_WRITE ;
 int management ;
 int management_io (int ) ;
 int process_incoming_link (struct context*) ;
 int process_incoming_tun (struct context*) ;
 int process_outgoing_link (struct context*) ;
 int process_outgoing_tun (struct context*) ;
 int read_incoming_link (struct context*) ;
 int read_incoming_tun (struct context*) ;

void
process_io(struct context *c)
{
    const unsigned int status = c->c2.event_set_status;
    if (status & SOCKET_WRITE)
    {
        process_outgoing_link(c);
    }

    else if (status & TUN_WRITE)
    {
        process_outgoing_tun(c);
    }

    else if (status & SOCKET_READ)
    {
        read_incoming_link(c);
        if (!IS_SIG(c))
        {
            process_incoming_link(c);
        }
    }

    else if (status & TUN_READ)
    {
        read_incoming_tun(c);
        if (!IS_SIG(c))
        {
            process_incoming_tun(c);
        }
    }
}
