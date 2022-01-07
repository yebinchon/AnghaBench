
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmac_data_st {int ctx; } ;


 int EVP_CIPHER_CTX_ctrl (int ,int ,int,unsigned char*) ;
 int EVP_CTRL_AEAD_GET_TAG ;
 int EVP_EncryptFinal_ex (int ,unsigned char*,int*) ;
 int gmac_size () ;

__attribute__((used)) static int gmac_final(void *vmacctx, unsigned char *out, size_t *outl,
                      size_t outsize)
{
    struct gmac_data_st *macctx = vmacctx;
    int hlen = 0;

    if (!EVP_EncryptFinal_ex(macctx->ctx, out, &hlen))
        return 0;


    hlen = gmac_size();
    if (!EVP_CIPHER_CTX_ctrl(macctx->ctx, EVP_CTRL_AEAD_GET_TAG,
                             hlen, out))
        return 0;

    *outl = hlen;
    return 1;
}
