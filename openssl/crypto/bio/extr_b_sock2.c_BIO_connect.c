
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int on ;
typedef int BIO_ADDR ;


 int BIO_ADDR_sockaddr (int const*) ;
 int BIO_ADDR_sockaddr_size (int const*) ;
 int BIO_F_BIO_CONNECT ;
 int BIO_R_CONNECT_ERROR ;
 int BIO_R_INVALID_SOCKET ;
 int BIO_R_UNABLE_TO_KEEPALIVE ;
 int BIO_R_UNABLE_TO_NODELAY ;
 int BIO_SOCK_KEEPALIVE ;
 int BIO_SOCK_NODELAY ;
 int BIO_SOCK_NONBLOCK ;
 int BIO_sock_should_retry (int) ;
 int BIO_socket_nbio (int,int) ;
 int BIOerr (int ,int ) ;
 int ERR_LIB_SYS ;
 int ERR_raise_data (int ,int ,char*) ;
 int IPPROTO_TCP ;
 int SOL_SOCKET ;
 int SO_KEEPALIVE ;
 int TCP_NODELAY ;
 int connect (int,int ,int ) ;
 int get_last_socket_error () ;
 scalar_t__ setsockopt (int,int ,int ,void const*,int) ;

int BIO_connect(int sock, const BIO_ADDR *addr, int options)
{
    const int on = 1;

    if (sock == -1) {
        BIOerr(BIO_F_BIO_CONNECT, BIO_R_INVALID_SOCKET);
        return 0;
    }

    if (!BIO_socket_nbio(sock, (options & BIO_SOCK_NONBLOCK) != 0))
        return 0;

    if (options & BIO_SOCK_KEEPALIVE) {
        if (setsockopt(sock, SOL_SOCKET, SO_KEEPALIVE,
                       (const void *)&on, sizeof(on)) != 0) {
            ERR_raise_data(ERR_LIB_SYS, get_last_socket_error(),
                           "calling setsockopt()");
            BIOerr(BIO_F_BIO_CONNECT, BIO_R_UNABLE_TO_KEEPALIVE);
            return 0;
        }
    }

    if (options & BIO_SOCK_NODELAY) {
        if (setsockopt(sock, IPPROTO_TCP, TCP_NODELAY,
                       (const void *)&on, sizeof(on)) != 0) {
            ERR_raise_data(ERR_LIB_SYS, get_last_socket_error(),
                           "calling setsockopt()");
            BIOerr(BIO_F_BIO_CONNECT, BIO_R_UNABLE_TO_NODELAY);
            return 0;
        }
    }

    if (connect(sock, BIO_ADDR_sockaddr(addr),
                BIO_ADDR_sockaddr_size(addr)) == -1) {
        if (!BIO_sock_should_retry(-1)) {
            ERR_raise_data(ERR_LIB_SYS, get_last_socket_error(),
                           "calling connect()");
            BIOerr(BIO_F_BIO_CONNECT, BIO_R_CONNECT_ERROR);
        }
        return 0;
    }
    return 1;
}
