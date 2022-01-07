
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ POLLINFO ;


 short POLLOUT ;
 int info (char*,int ) ;

int poll_default_snd_callback(POLLINFO *pi, short int *events) {
    *events &= ~POLLOUT;

    info("POLLFD: internal error: poll_default_snd_callback(): nothing to send on socket %d", pi->fd);
    return 0;
}
