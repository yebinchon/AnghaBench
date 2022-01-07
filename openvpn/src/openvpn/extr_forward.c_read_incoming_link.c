
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int link_socket; int explicit_exit_notification_interval; int from; int buf; int frame; TYPE_1__* buffers; } ;
struct TYPE_5__ {scalar_t__ inetd; } ;
struct context {TYPE_3__ c2; TYPE_2__ options; } ;
struct buffer {int dummy; } ;
struct TYPE_4__ {int read_link_buf; } ;


 int ASSERT (int ) ;
 int D_STREAM_ERRORS ;
 int FRAME_HEADROOM_ADJ (int *,int ) ;
 int FRAME_HEADROOM_MARKER_READ_LINK ;
 int PERF_READ_IN_LINK ;
 int SIGTERM ;
 int SIGUSR1 ;
 int buf_init (int *,int ) ;
 int check_status (int,char*,int ,int *) ;
 scalar_t__ event_timeout_defined (int *) ;
 int link_socket_read (int ,int *,int *) ;
 int management_sleep (int) ;
 int msg (int ,char*,int) ;
 int perf_pop () ;
 int perf_push (int ) ;
 scalar_t__ port_share ;
 int port_share_redirect (scalar_t__,struct buffer const*,int const) ;
 int register_signal (struct context*,int ,char*) ;
 scalar_t__ socket_connection_reset (int ,int) ;
 scalar_t__ socket_foreign_protocol_detected (int ) ;
 struct buffer* socket_foreign_protocol_head (int ) ;
 int socket_foreign_protocol_sd (int ) ;
 int socks_postprocess_incoming_link (struct context*) ;

void
read_incoming_link(struct context *c)
{




    int status;



    perf_push(PERF_READ_IN_LINK);

    c->c2.buf = c->c2.buffers->read_link_buf;
    ASSERT(buf_init(&c->c2.buf, FRAME_HEADROOM_ADJ(&c->c2.frame, FRAME_HEADROOM_MARKER_READ_LINK)));

    status = link_socket_read(c->c2.link_socket,
                              &c->c2.buf,
                              &c->c2.from);

    if (socket_connection_reset(c->c2.link_socket, status))
    {
        {

            if (c->options.inetd)
            {
                register_signal(c, SIGTERM, "connection-reset-inetd");
                msg(D_STREAM_ERRORS, "Connection reset, inetd/xinetd exit [%d]", status);
            }
            else
            {
                {
                    register_signal(c, SIGUSR1, "connection-reset");
                    msg(D_STREAM_ERRORS, "Connection reset, restarting [%d]", status);
                }
            }
        }
        perf_pop();
        return;
    }


    check_status(status, "read", c->c2.link_socket, ((void*)0));


    socks_postprocess_incoming_link(c);

    perf_pop();
}
