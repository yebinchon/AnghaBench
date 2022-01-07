
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_F_OPENSSL_BUF2HEXSTR_EX ;
 int CRYPTO_R_TOO_SMALL_BUFFER ;
 int CRYPTOerr (int ,int ) ;
 int ebcdic2ascii (char*,char*,int) ;

int OPENSSL_buf2hexstr_ex(char *str, size_t str_n, size_t *strlen,
                          const unsigned char *buf, size_t buflen)
{
    static const char hexdig[] = "0123456789ABCDEF";
    const unsigned char *p;
    char *q;
    size_t i;

    if (strlen != ((void*)0))
        *strlen = buflen * 3;
    if (str == ((void*)0))
        return 1;

    if (str_n < (unsigned long)buflen * 3) {
        CRYPTOerr(CRYPTO_F_OPENSSL_BUF2HEXSTR_EX, CRYPTO_R_TOO_SMALL_BUFFER);
        return 0;
    }

    q = str;
    for (i = 0, p = buf; i < buflen; i++, p++) {
        *q++ = hexdig[(*p >> 4) & 0xf];
        *q++ = hexdig[*p & 0xf];
        *q++ = ':';
    }
    q[-1] = 0;



    return 1;
}
