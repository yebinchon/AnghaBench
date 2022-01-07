
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int length; int data; } ;
struct TYPE_7__ {int send_interval; int recv_timeout; TYPE_1__ data_to_send; } ;
typedef TYPE_2__ nn_options_t ;
typedef int int64_t ;


 scalar_t__ EAGAIN ;
 scalar_t__ EFSM ;
 scalar_t__ ETIMEDOUT ;
 int NN_MSG ;
 scalar_t__ errno ;
 int fprintf (int ,char*) ;
 int nn_assert_errno (int,char*) ;
 int nn_clock_ms () ;
 int nn_freemsg (void*) ;
 int nn_print_message (TYPE_2__*,void*,int) ;
 int nn_recv (int,void**,int ,int ) ;
 int nn_recv_loop (TYPE_2__*,int) ;
 int nn_send (int,int ,int ,int ) ;
 int nn_set_recv_timeout (int,int) ;
 int nn_sleep (int) ;
 int stderr ;

void nn_rw_loop (nn_options_t *options, int sock)
{
    int rc;
    void *buf;
    uint64_t start_time;
    int64_t time_to_sleep, interval, recv_timeout;

    interval = (int)(options->send_interval*1000);
    recv_timeout = (int)(options->recv_timeout*1000);

    for (;;) {
        start_time = nn_clock_ms();
        rc = nn_send (sock,
            options->data_to_send.data, options->data_to_send.length,
            0);
        if (rc < 0 && errno == EAGAIN) {
            fprintf (stderr, "Message not sent (EAGAIN)\n");
        } else {
            nn_assert_errno (rc >= 0, "Can't send");
        }
        if (options->send_interval < 0) {
            nn_recv_loop (options, sock);
            return;
        }

        for (;;) {
            time_to_sleep = (start_time + interval) - nn_clock_ms();
            if (time_to_sleep <= 0) {
                break;
            }
            if (recv_timeout >= 0 && time_to_sleep > recv_timeout)
            {
                time_to_sleep = recv_timeout;
            }
            nn_set_recv_timeout (sock, (int) time_to_sleep);
            rc = nn_recv (sock, &buf, NN_MSG, 0);
            if (rc < 0) {
                if (errno == EAGAIN) {
                    continue;
                } else if (errno == ETIMEDOUT || errno == EFSM) {
                    time_to_sleep = (start_time + interval) - nn_clock_ms();
                    if (time_to_sleep > 0)
                        nn_sleep ((int) time_to_sleep);
                    continue;
                }
            }
            nn_assert_errno (rc >= 0, "Can't recv");
            nn_print_message (options, buf, rc);
            nn_freemsg (buf);
        }
    }
}
