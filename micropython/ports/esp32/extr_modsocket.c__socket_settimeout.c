
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int timeout ;
struct timeval {int tv_usec; int tv_sec; } ;
struct TYPE_3__ {int retries; int fd; } ;
typedef TYPE_1__ socket_obj_t ;


 int F_SETFL ;
 int O_NONBLOCK ;
 int SOCKET_POLL_US ;
 int SOL_SOCKET ;
 int SO_RCVTIMEO ;
 int SO_SNDTIMEO ;
 int UINT64_MAX ;
 int UINT_MAX ;
 int lwip_fcntl (int ,int ,int ) ;
 int lwip_setsockopt (int ,int ,int ,void const*,int) ;

void _socket_settimeout(socket_obj_t *sock, uint64_t timeout_ms) {




    sock->retries = (timeout_ms == UINT64_MAX) ? UINT_MAX : timeout_ms * 1000 / SOCKET_POLL_US;

    struct timeval timeout = {
        .tv_sec = 0,
        .tv_usec = timeout_ms ? SOCKET_POLL_US : 0
    };
    lwip_setsockopt(sock->fd, SOL_SOCKET, SO_SNDTIMEO, (const void *)&timeout, sizeof(timeout));
    lwip_setsockopt(sock->fd, SOL_SOCKET, SO_RCVTIMEO, (const void *)&timeout, sizeof(timeout));
    lwip_fcntl(sock->fd, F_SETFL, timeout_ms ? 0 : O_NONBLOCK);
}
