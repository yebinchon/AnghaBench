
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_PURPOSE ;
typedef int X509 ;


 int KU_KEY_ENCIPHERMENT ;
 int check_purpose_ssl_server (int const*,int const*,int) ;
 scalar_t__ ku_reject (int const*,int ) ;

__attribute__((used)) static int check_purpose_ns_ssl_server(const X509_PURPOSE *xp, const X509 *x,
                                       int ca)
{
    int ret;
    ret = check_purpose_ssl_server(xp, x, ca);
    if (!ret || ca)
        return ret;

    if (ku_reject(x, KU_KEY_ENCIPHERMENT))
        return 0;
    return ret;
}
