
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ POLLINFO ;


 scalar_t__ EAGAIN ;
 scalar_t__ EWOULDBLOCK ;
 int MSG_DONTWAIT ;
 short POLLIN ;
 scalar_t__ errno ;
 int error (char*,int) ;
 int info (char*,int,int ) ;
 int recv (int ,char*,int,int ) ;

int poll_default_rcv_callback(POLLINFO *pi, short int *events) {
    *events |= POLLIN;

    char buffer[1024 + 1];

    ssize_t rc;
    do {
        rc = recv(pi->fd, buffer, 1024, MSG_DONTWAIT);
        if (rc < 0) {

            if (errno != EWOULDBLOCK && errno != EAGAIN) {
                error("POLLFD: poll_default_rcv_callback(): recv() failed with %zd.", rc);
                return -1;
            }
        } else if (rc) {

            info("POLLFD: internal error: poll_default_rcv_callback() is discarding %zd bytes received on socket %d", rc, pi->fd);
        }
    } while (rc != -1);

    return 0;
}
