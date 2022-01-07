
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_R_MALLOC_FAILURE ;
 unsigned char* OPENSSL_malloc (int) ;
 int PKCS12_F_OPENSSL_ASC2UNI ;
 int PKCS12err (int ,int ) ;
 int strlen (char const*) ;

unsigned char *OPENSSL_asc2uni(const char *asc, int asclen,
                               unsigned char **uni, int *unilen)
{
    int ulen, i;
    unsigned char *unitmp;

    if (asclen == -1)
        asclen = strlen(asc);
    ulen = asclen * 2 + 2;
    if ((unitmp = OPENSSL_malloc(ulen)) == ((void*)0)) {
        PKCS12err(PKCS12_F_OPENSSL_ASC2UNI, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    for (i = 0; i < ulen - 2; i += 2) {
        unitmp[i] = 0;
        unitmp[i + 1] = asc[i >> 1];
    }

    unitmp[ulen - 2] = 0;
    unitmp[ulen - 1] = 0;
    if (unilen)
        *unilen = ulen;
    if (uni)
        *uni = unitmp;
    return unitmp;
}
