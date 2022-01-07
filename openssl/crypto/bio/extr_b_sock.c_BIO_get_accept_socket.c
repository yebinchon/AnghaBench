
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO_ADDRINFO ;


 int AF_UNSPEC ;
 int BIO_ADDRINFO_address (int *) ;
 int BIO_ADDRINFO_family (int *) ;
 int BIO_ADDRINFO_free (int *) ;
 int BIO_ADDRINFO_protocol (int *) ;
 int BIO_ADDRINFO_socktype (int *) ;
 int BIO_LOOKUP_SERVER ;
 int BIO_PARSE_PRIO_SERV ;
 int BIO_SOCK_REUSEADDR ;
 int BIO_closesocket (int) ;
 int BIO_listen (int,int ,int ) ;
 scalar_t__ BIO_lookup (char*,char*,int ,int ,int ,int **) ;
 int BIO_parse_hostserv (char*,char**,char**,int ) ;
 int BIO_sock_init () ;
 int BIO_socket (int ,int ,int ,int ) ;
 int INVALID_SOCKET ;
 int OPENSSL_free (char*) ;
 int SOCK_STREAM ;

int BIO_get_accept_socket(char *host, int bind_mode)
{
    int s = INVALID_SOCKET;
    char *h = ((void*)0), *p = ((void*)0);
    BIO_ADDRINFO *res = ((void*)0);

    if (!BIO_parse_hostserv(host, &h, &p, BIO_PARSE_PRIO_SERV))
        return INVALID_SOCKET;

    if (BIO_sock_init() != 1)
        return INVALID_SOCKET;

    if (BIO_lookup(h, p, BIO_LOOKUP_SERVER, AF_UNSPEC, SOCK_STREAM, &res) != 0)
        goto err;

    if ((s = BIO_socket(BIO_ADDRINFO_family(res), BIO_ADDRINFO_socktype(res),
                        BIO_ADDRINFO_protocol(res), 0)) == INVALID_SOCKET) {
        s = INVALID_SOCKET;
        goto err;
    }

    if (!BIO_listen(s, BIO_ADDRINFO_address(res),
                    bind_mode ? BIO_SOCK_REUSEADDR : 0)) {
        BIO_closesocket(s);
        s = INVALID_SOCKET;
    }

 err:
    BIO_ADDRINFO_free(res);
    OPENSSL_free(h);
    OPENSSL_free(p);

    return s;
}
