
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_F_OPENSSL_HEXSTR2BUF ;
 int CRYPTOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (unsigned char*) ;
 scalar_t__ OPENSSL_hexstr2buf_ex (unsigned char*,size_t,size_t*,char const*) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 int strlen (char const*) ;

unsigned char *OPENSSL_hexstr2buf(const char *str, long *buflen)
{
    unsigned char *buf;
    size_t buf_n, tmp_buflen;

    buf_n = strlen(str) >> 1;
    if ((buf = OPENSSL_malloc(buf_n)) == ((void*)0)) {
        CRYPTOerr(CRYPTO_F_OPENSSL_HEXSTR2BUF, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    if (buflen != ((void*)0))
        *buflen = 0;
    tmp_buflen = 0;
    if (OPENSSL_hexstr2buf_ex(buf, buf_n, &tmp_buflen, str)) {
        if (buflen != ((void*)0))
            *buflen = (long)tmp_buflen;
        return buf;
    }
    OPENSSL_free(buf);
    return ((void*)0);
}
