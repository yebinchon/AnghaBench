
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_R_MALLOC_FAILURE ;
 unsigned char* OPENSSL_asc2uni (char const*,int,unsigned char**,int*) ;
 unsigned char* OPENSSL_malloc (int) ;
 int PKCS12_F_OPENSSL_UTF82UNI ;
 int PKCS12err (int ,int ) ;
 int UTF8_getc (unsigned char const*,int,unsigned long*) ;
 int strlen (char const*) ;

unsigned char *OPENSSL_utf82uni(const char *asc, int asclen,
                                unsigned char **uni, int *unilen)
{
    int ulen, i, j;
    unsigned char *unitmp, *ret;
    unsigned long utf32chr = 0;

    if (asclen == -1)
        asclen = strlen(asc);

    for (ulen = 0, i = 0; i < asclen; i += j) {
        j = UTF8_getc((const unsigned char *)asc+i, asclen-i, &utf32chr);
        if (j < 0)
            return OPENSSL_asc2uni(asc, asclen, uni, unilen);

        if (utf32chr > 0x10FFFF)
            return ((void*)0);

        if (utf32chr >= 0x10000)
            ulen += 2*2;
        else
            ulen += 2;
    }

    ulen += 2;

    if ((ret = OPENSSL_malloc(ulen)) == ((void*)0)) {
        PKCS12err(PKCS12_F_OPENSSL_UTF82UNI, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    for (unitmp = ret, i = 0; i < asclen; i += j) {
        j = UTF8_getc((const unsigned char *)asc+i, asclen-i, &utf32chr);
        if (utf32chr >= 0x10000) {
            unsigned int hi, lo;

            utf32chr -= 0x10000;
            hi = 0xD800 + (utf32chr>>10);
            lo = 0xDC00 + (utf32chr&0x3ff);
            *unitmp++ = (unsigned char)(hi>>8);
            *unitmp++ = (unsigned char)(hi);
            *unitmp++ = (unsigned char)(lo>>8);
            *unitmp++ = (unsigned char)(lo);
        } else {
            *unitmp++ = (unsigned char)(utf32chr>>8);
            *unitmp++ = (unsigned char)(utf32chr);
        }
    }

    *unitmp++ = 0;
    *unitmp++ = 0;
    if (unilen)
        *unilen = ulen;
    if (uni)
        *uni = ret;
    return ret;
}
