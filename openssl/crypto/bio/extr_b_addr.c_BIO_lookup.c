
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum BIO_lookup_type { ____Placeholder_BIO_lookup_type } BIO_lookup_type ;
typedef int BIO_ADDRINFO ;


 int BIO_lookup_ex (char const*,char const*,int,int,int,int ,int **) ;

int BIO_lookup(const char *host, const char *service,
               enum BIO_lookup_type lookup_type,
               int family, int socktype, BIO_ADDRINFO **res)
{
    return BIO_lookup_ex(host, service, lookup_type, family, socktype, 0, res);
}
