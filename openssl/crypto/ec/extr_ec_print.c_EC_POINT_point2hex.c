
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int point_conversion_form_t ;
typedef int EC_POINT ;
typedef int EC_GROUP ;
typedef int BN_CTX ;


 size_t EC_POINT_point2buf (int const*,int const*,int ,unsigned char**,int *) ;
 void** HEX_DIGITS ;
 int OPENSSL_free (unsigned char*) ;
 char* OPENSSL_malloc (size_t) ;

char *EC_POINT_point2hex(const EC_GROUP *group,
                         const EC_POINT *point,
                         point_conversion_form_t form, BN_CTX *ctx)
{
    char *ret, *p;
    size_t buf_len = 0, i;
    unsigned char *buf = ((void*)0), *pbuf;

    buf_len = EC_POINT_point2buf(group, point, form, &buf, ctx);

    if (buf_len == 0)
        return ((void*)0);

    ret = OPENSSL_malloc(buf_len * 2 + 2);
    if (ret == ((void*)0)) {
        OPENSSL_free(buf);
        return ((void*)0);
    }
    p = ret;
    pbuf = buf;
    for (i = buf_len; i > 0; i--) {
        int v = (int)*(pbuf++);
        *(p++) = HEX_DIGITS[v >> 4];
        *(p++) = HEX_DIGITS[v & 0x0F];
    }
    *p = '\0';

    OPENSSL_free(buf);

    return ret;
}
