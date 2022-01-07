
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int length; int data; } ;
struct TYPE_6__ {TYPE_1__ data_to_send; } ;
typedef TYPE_2__ nn_options_t ;


 scalar_t__ EAGAIN ;
 int NN_MSG ;
 scalar_t__ errno ;
 int fprintf (int ,char*) ;
 int nn_assert_errno (int,char*) ;
 int nn_freemsg (void*) ;
 int nn_print_message (TYPE_2__*,void*,int) ;
 int nn_recv (int,void**,int ,int ) ;
 int nn_send (int,int ,int ,int ) ;
 int stderr ;

void nn_resp_loop (nn_options_t *options, int sock)
{
    int rc;
    void *buf;

    for (;;) {
        rc = nn_recv (sock, &buf, NN_MSG, 0);
        if (rc < 0 && errno == EAGAIN) {
                continue;
        } else {
            nn_assert_errno (rc >= 0, "Can't recv");
        }
        nn_print_message (options, buf, rc);
        nn_freemsg (buf);
        rc = nn_send (sock,
            options->data_to_send.data, options->data_to_send.length,
            0);
        if (rc < 0 && errno == EAGAIN) {
            fprintf (stderr, "Message not sent (EAGAIN)\n");
        } else {
            nn_assert_errno (rc >= 0, "Can't send");
        }
    }
}
