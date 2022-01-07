
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned char* aad_buf; size_t aad_buf_len; unsigned char* data_buf; size_t data_buf_len; int key_set; } ;
typedef TYPE_1__ PROV_AES_OCB_CTX ;
typedef int OSSL_ocb_cipher_fn ;


 int aes_generic_ocb_cipher ;
 int aes_ocb_block_update_internal (TYPE_1__*,unsigned char*,size_t*,unsigned char*,size_t*,size_t,unsigned char const*,size_t,int ) ;
 int cipher_updateaad ;
 int update_iv (TYPE_1__*) ;

__attribute__((used)) static int aes_ocb_block_update(void *vctx, unsigned char *out, size_t *outl,
                                size_t outsize, const unsigned char *in,
                                size_t inl)
{
    PROV_AES_OCB_CTX *ctx = (PROV_AES_OCB_CTX *)vctx;
    unsigned char *buf;
    size_t *buflen;
    OSSL_ocb_cipher_fn fn;

    if (!ctx->key_set || !update_iv(ctx))
        return 0;


    if (out == ((void*)0)) {
        buf = ctx->aad_buf;
        buflen = &ctx->aad_buf_len;
        fn = cipher_updateaad;
    } else {
        buf = ctx->data_buf;
        buflen = &ctx->data_buf_len;
        fn = aes_generic_ocb_cipher;
    }
    return aes_ocb_block_update_internal(ctx, buf, buflen, out, outl, outsize,
                                         in, inl, fn);
}
