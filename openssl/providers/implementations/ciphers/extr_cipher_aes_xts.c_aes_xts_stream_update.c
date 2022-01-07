
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PROV_AES_XTS_CTX ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int PROV_R_CIPHER_OPERATION_FAILED ;
 int PROV_R_OUTPUT_BUFFER_TOO_SMALL ;
 int aes_xts_cipher (int *,unsigned char*,size_t*,size_t,unsigned char const*,size_t) ;

__attribute__((used)) static int aes_xts_stream_update(void *vctx, unsigned char *out, size_t *outl,
                                 size_t outsize, const unsigned char *in,
                                 size_t inl)
{
    PROV_AES_XTS_CTX *ctx = (PROV_AES_XTS_CTX *)vctx;

    if (outsize < inl) {
        ERR_raise(ERR_LIB_PROV, PROV_R_OUTPUT_BUFFER_TOO_SMALL);
        return 0;
    }

    if (!aes_xts_cipher(ctx, out, outl, outsize, in, inl)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_CIPHER_OPERATION_FAILED);
        return 0;
    }

    return 1;
}
