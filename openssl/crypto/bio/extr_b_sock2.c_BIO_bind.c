
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int on ;
typedef int BIO_ADDR ;


 int BIO_ADDR_sockaddr (int const*) ;
 int BIO_ADDR_sockaddr_size (int const*) ;
 int BIO_F_BIO_BIND ;
 int BIO_R_INVALID_SOCKET ;
 int BIO_R_UNABLE_TO_BIND_SOCKET ;
 int BIO_R_UNABLE_TO_REUSEADDR ;
 int BIO_SOCK_REUSEADDR ;
 int BIOerr (int ,int ) ;
 int ERR_LIB_SYS ;
 int ERR_raise_data (int ,int ,char*) ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 scalar_t__ bind (int,int ,int ) ;
 int get_last_socket_error () ;
 scalar_t__ setsockopt (int,int ,int ,void const*,int) ;

int BIO_bind(int sock, const BIO_ADDR *addr, int options)
{

    int on = 1;


    if (sock == -1) {
        BIOerr(BIO_F_BIO_BIND, BIO_R_INVALID_SOCKET);
        return 0;
    }






    if (options & BIO_SOCK_REUSEADDR) {
        if (setsockopt(sock, SOL_SOCKET, SO_REUSEADDR,
                       (const void *)&on, sizeof(on)) != 0) {
            ERR_raise_data(ERR_LIB_SYS, get_last_socket_error(),
                           "calling setsockopt()");
            BIOerr(BIO_F_BIO_BIND, BIO_R_UNABLE_TO_REUSEADDR);
            return 0;
        }
    }


    if (bind(sock, BIO_ADDR_sockaddr(addr), BIO_ADDR_sockaddr_size(addr)) != 0) {
        ERR_raise_data(ERR_LIB_SYS, get_last_socket_error(),
                       "calling bind()");
        BIOerr(BIO_F_BIO_BIND, BIO_R_UNABLE_TO_BIND_SOCKET);
        return 0;
    }

    return 1;
}
