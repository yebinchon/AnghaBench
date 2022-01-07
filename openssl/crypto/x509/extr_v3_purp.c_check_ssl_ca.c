
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ex_nscert; } ;
typedef TYPE_1__ X509 ;


 int NS_SSL_CA ;
 int check_ca (TYPE_1__ const*) ;

__attribute__((used)) static int check_ssl_ca(const X509 *x)
{
    int ca_ret;
    ca_ret = check_ca(x);
    if (!ca_ret)
        return 0;

    if (ca_ret != 5 || x->ex_nscert & NS_SSL_CA)
        return ca_ret;
    else
        return 0;
}
