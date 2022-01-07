
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nn_options_t ;


 scalar_t__ EAGAIN ;
 scalar_t__ EFSM ;
 scalar_t__ ETIMEDOUT ;
 int NN_MSG ;
 scalar_t__ errno ;
 int nn_assert_errno (int,char*) ;
 int nn_freemsg (void*) ;
 int nn_print_message (int *,void*,int) ;
 int nn_recv (int,void**,int ,int ) ;

void nn_recv_loop (nn_options_t *options, int sock)
{
    int rc;
    void *buf;

    for (;;) {
        rc = nn_recv (sock, &buf, NN_MSG, 0);
        if (rc < 0 && errno == EAGAIN) {
            continue;
        } else if (rc < 0 && (errno == ETIMEDOUT || errno == EFSM)) {
            return;
        } else {
            nn_assert_errno (rc >= 0, "Can't recv");
        }
        nn_print_message (options, buf, rc);
        nn_freemsg (buf);
    }
}
