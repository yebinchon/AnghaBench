
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {int length; int data; } ;
struct TYPE_5__ {int send_interval; TYPE_1__ data_to_send; } ;
typedef TYPE_2__ nn_options_t ;
typedef scalar_t__ int64_t ;


 scalar_t__ EAGAIN ;
 scalar_t__ errno ;
 int fprintf (int ,char*) ;
 int nn_assert_errno (int,char*) ;
 scalar_t__ nn_clock_ms () ;
 int nn_send (int,int ,int ,int ) ;
 int nn_sleep (int) ;
 int stderr ;

void nn_send_loop (nn_options_t *options, int sock)
{
    int rc;
    uint64_t start_time;
    int64_t time_to_sleep, interval;

    interval = (int)(options->send_interval*1000);

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
        if (interval >= 0) {
            time_to_sleep = (start_time + interval) - nn_clock_ms();
            if (time_to_sleep > 0) {
                nn_sleep ((int) time_to_sleep);
            }
        } else {
            break;
        }
    }
}
