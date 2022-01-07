
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_PURPOSE ;
typedef int X509 ;


 int KU_TLS ;
 int NS_SSL_SERVER ;
 int XKU_SGC ;
 int XKU_SSL_SERVER ;
 int check_ssl_ca (int const*) ;
 scalar_t__ ku_reject (int const*,int ) ;
 scalar_t__ ns_reject (int const*,int ) ;
 scalar_t__ xku_reject (int const*,int) ;

__attribute__((used)) static int check_purpose_ssl_server(const X509_PURPOSE *xp, const X509 *x,
                                    int ca)
{
    if (xku_reject(x, XKU_SSL_SERVER | XKU_SGC))
        return 0;
    if (ca)
        return check_ssl_ca(x);

    if (ns_reject(x, NS_SSL_SERVER))
        return 0;
    if (ku_reject(x, KU_TLS))
        return 0;

    return 1;

}
