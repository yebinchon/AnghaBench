
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_F_OPENSSL_BUF2HEXSTR ;
 int CRYPTOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 scalar_t__ OPENSSL_buf2hexstr_ex (char*,size_t,int *,unsigned char const*,long) ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_malloc (size_t) ;
 char* OPENSSL_zalloc (int) ;

char *OPENSSL_buf2hexstr(const unsigned char *buf, long buflen)
{
    char *tmp;
    size_t tmp_n;

    if (buflen == 0)
        return OPENSSL_zalloc(1);

    tmp_n = buflen * 3;
    if ((tmp = OPENSSL_malloc(tmp_n)) == ((void*)0)) {
        CRYPTOerr(CRYPTO_F_OPENSSL_BUF2HEXSTR, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    if (OPENSSL_buf2hexstr_ex(tmp, tmp_n, ((void*)0), buf, buflen))
        return tmp;
    OPENSSL_free(tmp);
    return ((void*)0);
}
