
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_PURPOSE ;
typedef int X509 ;


 int KU_DIGITAL_SIGNATURE ;
 int KU_KEY_AGREEMENT ;
 int NS_SSL_CLIENT ;
 int XKU_SSL_CLIENT ;
 int check_ssl_ca (int const*) ;
 scalar_t__ ku_reject (int const*,int) ;
 scalar_t__ ns_reject (int const*,int ) ;
 scalar_t__ xku_reject (int const*,int ) ;

__attribute__((used)) static int check_purpose_ssl_client(const X509_PURPOSE *xp, const X509 *x,
                                    int ca)
{
    if (xku_reject(x, XKU_SSL_CLIENT))
        return 0;
    if (ca)
        return check_ssl_ca(x);

    if (ku_reject(x, KU_DIGITAL_SIGNATURE | KU_KEY_AGREEMENT))
        return 0;

    if (ns_reject(x, NS_SSL_CLIENT))
        return 0;
    return 1;
}
