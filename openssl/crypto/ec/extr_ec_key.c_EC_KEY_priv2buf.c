
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_KEY ;


 int EC_F_EC_KEY_PRIV2BUF ;
 size_t EC_KEY_priv2oct (int const*,unsigned char*,size_t) ;
 int ECerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (size_t) ;

size_t EC_KEY_priv2buf(const EC_KEY *eckey, unsigned char **pbuf)
{
    size_t len;
    unsigned char *buf;

    len = EC_KEY_priv2oct(eckey, ((void*)0), 0);
    if (len == 0)
        return 0;
    if ((buf = OPENSSL_malloc(len)) == ((void*)0)) {
        ECerr(EC_F_EC_KEY_PRIV2BUF, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    len = EC_KEY_priv2oct(eckey, buf, len);
    if (len == 0) {
        OPENSSL_free(buf);
        return 0;
    }
    *pbuf = buf;
    return len;
}
