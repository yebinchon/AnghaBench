
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmac_data_st {int out_len; scalar_t__ xof_mode; int * ctx; } ;
typedef int EVP_MD_CTX ;


 scalar_t__ EVP_DigestFinalXOF (int *,unsigned char*,int) ;
 scalar_t__ EVP_DigestUpdate (int *,unsigned char*,int) ;
 int KMAC_MAX_ENCODED_HEADER_LEN ;
 scalar_t__ right_encode (unsigned char*,int*,int) ;

__attribute__((used)) static int kmac_final(void *vmacctx, unsigned char *out, size_t *outl,
                      size_t outsize)
{
    struct kmac_data_st *kctx = vmacctx;
    EVP_MD_CTX *ctx = kctx->ctx;
    int lbits, len;
    unsigned char encoded_outlen[KMAC_MAX_ENCODED_HEADER_LEN];
    int ok;


    lbits = (kctx->xof_mode ? 0 : (kctx->out_len * 8));

    ok = right_encode(encoded_outlen, &len, lbits)
        && EVP_DigestUpdate(ctx, encoded_outlen, len)
        && EVP_DigestFinalXOF(ctx, out, kctx->out_len);
    if (ok && outl != ((void*)0))
        *outl = kctx->out_len;
    return ok;
}
