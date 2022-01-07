
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;
typedef int BIO_ADDR ;


 int BIO_ADDR_sockaddr_noconst (int *) ;
 int BIO_F_BIO_ACCEPT_EX ;
 int BIO_R_ACCEPT_ERROR ;
 int BIO_SOCK_NONBLOCK ;
 int BIO_sock_should_retry (int) ;
 int BIO_socket_nbio (int,int) ;
 int BIOerr (int ,int ) ;
 int ERR_LIB_SYS ;
 int ERR_raise_data (int ,int ,char*) ;
 int INVALID_SOCKET ;
 int accept (int,int ,int*) ;
 int closesocket (int) ;
 int get_last_socket_error () ;

int BIO_accept_ex(int accept_sock, BIO_ADDR *addr_, int options)
{
    socklen_t len;
    int accepted_sock;
    BIO_ADDR locaddr;
    BIO_ADDR *addr = addr_ == ((void*)0) ? &locaddr : addr_;

    len = sizeof(*addr);
    accepted_sock = accept(accept_sock,
                           BIO_ADDR_sockaddr_noconst(addr), &len);
    if (accepted_sock == -1) {
        if (!BIO_sock_should_retry(accepted_sock)) {
            ERR_raise_data(ERR_LIB_SYS, get_last_socket_error(),
                           "calling accept()");
            BIOerr(BIO_F_BIO_ACCEPT_EX, BIO_R_ACCEPT_ERROR);
        }
        return INVALID_SOCKET;
    }

    if (!BIO_socket_nbio(accepted_sock, (options & BIO_SOCK_NONBLOCK) != 0)) {
        closesocket(accepted_sock);
        return INVALID_SOCKET;
    }

    return accepted_sock;
}
