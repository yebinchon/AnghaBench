
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO_ADDRINFO ;


 scalar_t__ AF_INET ;
 int BIO_ADDRINFO_address (int *) ;
 scalar_t__ BIO_ADDRINFO_family (int *) ;
 int BIO_ADDRINFO_free (int *) ;
 int BIO_ADDR_rawport (int ) ;
 int BIO_F_BIO_GET_PORT ;
 int BIO_LOOKUP_CLIENT ;
 int BIO_R_ADDRINFO_ADDR_IS_NOT_AF_INET ;
 int BIO_R_NO_PORT_DEFINED ;
 scalar_t__ BIO_lookup (int *,char const*,int ,scalar_t__,int ,int **) ;
 int BIO_sock_init () ;
 int BIOerr (int ,int ) ;
 int ERR_add_error_data (int,char*,char const*) ;
 int SOCK_STREAM ;
 unsigned short ntohs (int ) ;

int BIO_get_port(const char *str, unsigned short *port_ptr)
{
    BIO_ADDRINFO *res = ((void*)0);
    int ret = 0;

    if (str == ((void*)0)) {
        BIOerr(BIO_F_BIO_GET_PORT, BIO_R_NO_PORT_DEFINED);
        return 0;
    }

    if (BIO_sock_init() != 1)
        return 0;

    if (BIO_lookup(((void*)0), str, BIO_LOOKUP_CLIENT, AF_INET, SOCK_STREAM, &res)) {
        if (BIO_ADDRINFO_family(res) != AF_INET) {
            BIOerr(BIO_F_BIO_GET_PORT,
                   BIO_R_ADDRINFO_ADDR_IS_NOT_AF_INET);
        } else {
            *port_ptr = ntohs(BIO_ADDR_rawport(BIO_ADDRINFO_address(res)));
            ret = 1;
        }
        BIO_ADDRINFO_free(res);
    } else {
        ERR_add_error_data(2, "host=", str);
    }

    return ret;
}
