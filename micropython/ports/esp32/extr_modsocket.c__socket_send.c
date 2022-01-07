
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int retries; int fd; } ;
typedef TYPE_1__ socket_obj_t ;


 scalar_t__ EWOULDBLOCK ;
 int MP_ETIMEDOUT ;
 int MP_THREAD_GIL_ENTER () ;
 int MP_THREAD_GIL_EXIT () ;
 int check_for_exceptions () ;
 scalar_t__ errno ;
 int exception_from_errno (scalar_t__) ;
 int lwip_write (int ,char const*,size_t) ;
 int mp_raise_OSError (int ) ;

int _socket_send(socket_obj_t *sock, const char *data, size_t datalen) {
    int sentlen = 0;
    for (int i=0; i<=sock->retries && sentlen < datalen; i++) {
        MP_THREAD_GIL_EXIT();
        int r = lwip_write(sock->fd, data+sentlen, datalen-sentlen);
        MP_THREAD_GIL_ENTER();
        if (r < 0 && errno != EWOULDBLOCK) exception_from_errno(errno);
        if (r > 0) sentlen += r;
        check_for_exceptions();
    }
    if (sentlen == 0) mp_raise_OSError(MP_ETIMEDOUT);
    return sentlen;
}
