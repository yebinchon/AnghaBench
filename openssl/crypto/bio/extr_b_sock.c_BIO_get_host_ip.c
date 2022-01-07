
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO_ADDRINFO ;


 scalar_t__ AF_INET ;
 int BIO_ADDRINFO_address (int *) ;
 scalar_t__ BIO_ADDRINFO_family (int *) ;
 int BIO_ADDRINFO_free (int *) ;
 int BIO_ADDR_rawaddress (int ,unsigned char*,size_t*) ;
 int BIO_F_BIO_GET_HOST_IP ;
 int BIO_LOOKUP_CLIENT ;
 int BIO_R_GETHOSTBYNAME_ADDR_IS_NOT_AF_INET ;
 scalar_t__ BIO_lookup (char const*,int *,int ,scalar_t__,int ,int **) ;
 int BIO_sock_init () ;
 int BIOerr (int ,int ) ;
 int ERR_add_error_data (int,char*,char const*) ;
 int SOCK_STREAM ;
 scalar_t__ ossl_assert (int) ;

int BIO_get_host_ip(const char *str, unsigned char *ip)
{
    BIO_ADDRINFO *res = ((void*)0);
    int ret = 0;

    if (BIO_sock_init() != 1)
        return 0;

    if (BIO_lookup(str, ((void*)0), BIO_LOOKUP_CLIENT, AF_INET, SOCK_STREAM, &res)) {
        size_t l;

        if (BIO_ADDRINFO_family(res) != AF_INET) {
            BIOerr(BIO_F_BIO_GET_HOST_IP,
                   BIO_R_GETHOSTBYNAME_ADDR_IS_NOT_AF_INET);
        } else if (BIO_ADDR_rawaddress(BIO_ADDRINFO_address(res), ((void*)0), &l)) {




            if (ossl_assert(l == 4))
                ret = BIO_ADDR_rawaddress(BIO_ADDRINFO_address(res), ip, &l);
        }
        BIO_ADDRINFO_free(res);
    } else {
        ERR_add_error_data(2, "host=", str);
    }

    return ret;
}
