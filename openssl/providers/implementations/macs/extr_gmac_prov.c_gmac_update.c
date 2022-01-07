
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmac_data_st {int * ctx; } ;
typedef int EVP_CIPHER_CTX ;


 int EVP_EncryptUpdate (int *,int *,int*,unsigned char const*,size_t) ;
 size_t INT_MAX ;

__attribute__((used)) static int gmac_update(void *vmacctx, const unsigned char *data,
                       size_t datalen)
{
    struct gmac_data_st *macctx = vmacctx;
    EVP_CIPHER_CTX *ctx = macctx->ctx;
    int outlen;

    while (datalen > INT_MAX) {
        if (!EVP_EncryptUpdate(ctx, ((void*)0), &outlen, data, INT_MAX))
            return 0;
        data += INT_MAX;
        datalen -= INT_MAX;
    }
    return EVP_EncryptUpdate(ctx, ((void*)0), &outlen, data, datalen);
}
