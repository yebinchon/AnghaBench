
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_ENCODE_CTX ;


 int EVP_ENCODE_CTX_NO_NEWLINES ;
 int EVP_ENCODE_CTX_USE_SRP_ALPHABET ;
 int EVP_ENCODE_CTX_free (int *) ;
 int * EVP_ENCODE_CTX_new () ;
 int EVP_EncodeFinal (int *,unsigned char*,int*) ;
 int EVP_EncodeInit (int *) ;
 int EVP_EncodeUpdate (int *,unsigned char*,int*,unsigned char const*,int) ;
 int evp_encode_ctx_set_flags (int *,int) ;
 int memmove (char*,char*,int) ;

__attribute__((used)) static int t_tob64(char *dst, const unsigned char *src, int size)
{
    EVP_ENCODE_CTX *ctx = EVP_ENCODE_CTX_new();
    int outl = 0, outl2 = 0;
    unsigned char pad[2] = {0, 0};
    size_t leadz = 0;

    if (ctx == ((void*)0))
        return 0;

    EVP_EncodeInit(ctx);
    evp_encode_ctx_set_flags(ctx, EVP_ENCODE_CTX_NO_NEWLINES
                                  | EVP_ENCODE_CTX_USE_SRP_ALPHABET);






    leadz = 3 - (size % 3);
    if (leadz != 3
            && !EVP_EncodeUpdate(ctx, (unsigned char *)dst, &outl, pad,
                                 leadz)) {
        EVP_ENCODE_CTX_free(ctx);
        return 0;
    }

    if (!EVP_EncodeUpdate(ctx, (unsigned char *)dst + outl, &outl2, src,
                          size)) {
        EVP_ENCODE_CTX_free(ctx);
        return 0;
    }
    outl += outl2;
    EVP_EncodeFinal(ctx, (unsigned char *)dst + outl, &outl2);
    outl += outl2;


    if (leadz != 3) {
        memmove(dst, dst + leadz, outl - leadz);
        dst[outl - leadz] = '\0';
    }

    EVP_ENCODE_CTX_free(ctx);
    return 1;
}
