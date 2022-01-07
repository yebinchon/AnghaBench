
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_R_MALLOC_FAILURE ;
 char* OPENSSL_malloc (int) ;
 char* OPENSSL_uni2asc (unsigned char const*,int) ;
 int PKCS12_F_OPENSSL_UNI2UTF8 ;
 int PKCS12err (int ,int ) ;
 int bmp_to_utf8 (char*,unsigned char const*,int) ;

char *OPENSSL_uni2utf8(const unsigned char *uni, int unilen)
{
    int asclen, i, j;
    char *asctmp;


    if (unilen & 1)
        return ((void*)0);

    for (asclen = 0, i = 0; i < unilen; ) {
        j = bmp_to_utf8(((void*)0), uni+i, unilen-i);





        if (j < 0) return OPENSSL_uni2asc(uni, unilen);
        if (j == 4) i += 4;
        else i += 2;
        asclen += j;
    }


    if (!unilen || (uni[unilen-2]||uni[unilen - 1]))
        asclen++;

    if ((asctmp = OPENSSL_malloc(asclen)) == ((void*)0)) {
        PKCS12err(PKCS12_F_OPENSSL_UNI2UTF8, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }


    for (asclen = 0, i = 0; i < unilen; ) {
        j = bmp_to_utf8(asctmp+asclen, uni+i, unilen-i);
        if (j == 4) i += 4;
        else i += 2;
        asclen += j;
    }


    if (!unilen || (uni[unilen-2]||uni[unilen - 1]))
        asctmp[asclen] = '\0';

    return asctmp;
}
