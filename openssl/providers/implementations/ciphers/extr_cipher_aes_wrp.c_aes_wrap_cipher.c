
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PROV_AES_WRAP_CTX ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int PROV_R_OUTPUT_BUFFER_TOO_SMALL ;
 size_t aes_wrap_cipher_internal (int *,unsigned char*,unsigned char const*,size_t) ;

__attribute__((used)) static int aes_wrap_cipher(void *vctx,
                           unsigned char *out, size_t *outl, size_t outsize,
                           const unsigned char *in, size_t inl)
{
    PROV_AES_WRAP_CTX *ctx = (PROV_AES_WRAP_CTX *)vctx;
    size_t len;

    if (outsize < inl) {
        ERR_raise(ERR_LIB_PROV, PROV_R_OUTPUT_BUFFER_TOO_SMALL);
        return -1;
    }

    len = aes_wrap_cipher_internal(ctx, out, in, inl);
    if (len == 0)
        return -1;

    *outl = len;
    return 1;
}
