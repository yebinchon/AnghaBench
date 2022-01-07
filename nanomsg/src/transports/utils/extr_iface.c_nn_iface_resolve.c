
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int errnum_assert (int,int) ;
 int nn_iface_any (int,struct sockaddr_storage*,size_t*) ;
 int nn_literal_resolve (char const*,size_t,int,struct sockaddr_storage*,size_t*) ;

int nn_iface_resolve (const char *addr, size_t addrlen, int ipv4only,
    struct sockaddr_storage *result, size_t *resultlen)
{
    int rc;


    if (addrlen == 1 && addr [0] == '*') {
        nn_iface_any (ipv4only, result, resultlen);
        return 0;
    }

    rc = nn_literal_resolve (addr, addrlen, ipv4only, result, resultlen);
    if (rc == -EINVAL)
        return -ENODEV;
    errnum_assert (rc == 0, -rc);
    return 0;
}
