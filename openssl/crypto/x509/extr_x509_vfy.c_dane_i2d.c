
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int X509 ;




 int ERR_R_MALLOC_FAILURE ;
 int X509_F_DANE_I2D ;
 int X509_R_BAD_SELECTOR ;
 int X509_get_X509_PUBKEY (int *) ;
 int X509err (int ,int ) ;
 int i2d_X509 (int *,unsigned char**) ;
 int i2d_X509_PUBKEY (int ,unsigned char**) ;

__attribute__((used)) static unsigned char *dane_i2d(
    X509 *cert,
    uint8_t selector,
    unsigned int *i2dlen)
{
    unsigned char *buf = ((void*)0);
    int len;




    switch (selector) {
    case 129:
        len = i2d_X509(cert, &buf);
        break;
    case 128:
        len = i2d_X509_PUBKEY(X509_get_X509_PUBKEY(cert), &buf);
        break;
    default:
        X509err(X509_F_DANE_I2D, X509_R_BAD_SELECTOR);
        return ((void*)0);
    }

    if (len < 0 || buf == ((void*)0)) {
        X509err(X509_F_DANE_I2D, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    *i2dlen = (unsigned int)len;
    return buf;
}
