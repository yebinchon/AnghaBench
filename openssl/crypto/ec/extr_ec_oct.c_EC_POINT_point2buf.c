
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int point_conversion_form_t ;
typedef int EC_POINT ;
typedef int EC_GROUP ;
typedef int BN_CTX ;


 int EC_F_EC_POINT_POINT2BUF ;
 size_t EC_POINT_point2oct (int const*,int const*,int ,unsigned char*,size_t,int *) ;
 int ECerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (size_t) ;

size_t EC_POINT_point2buf(const EC_GROUP *group, const EC_POINT *point,
                          point_conversion_form_t form,
                          unsigned char **pbuf, BN_CTX *ctx)
{
    size_t len;
    unsigned char *buf;

    len = EC_POINT_point2oct(group, point, form, ((void*)0), 0, ((void*)0));
    if (len == 0)
        return 0;
    if ((buf = OPENSSL_malloc(len)) == ((void*)0)) {
        ECerr(EC_F_EC_POINT_POINT2BUF, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    len = EC_POINT_point2oct(group, point, form, buf, len, ctx);
    if (len == 0) {
        OPENSSL_free(buf);
        return 0;
    }
    *pbuf = buf;
    return len;
}
