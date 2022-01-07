
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_R_MALLOC_FAILURE ;
 char* OPENSSL_malloc (int) ;
 int PKCS12_F_OPENSSL_UNI2ASC ;
 int PKCS12err (int ,int ) ;

char *OPENSSL_uni2asc(const unsigned char *uni, int unilen)
{
    int asclen, i;
    char *asctmp;

    if (unilen & 1)
        return ((void*)0);
    asclen = unilen / 2;

    if (!unilen || uni[unilen - 1])
        asclen++;
    uni++;
    if ((asctmp = OPENSSL_malloc(asclen)) == ((void*)0)) {
        PKCS12err(PKCS12_F_OPENSSL_UNI2ASC, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    for (i = 0; i < unilen; i += 2)
        asctmp[i >> 1] = uni[i];
    asctmp[asclen - 1] = 0;
    return asctmp;
}
