
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PROV_CIPHER_CTX ;


 int PROV_R_OUTPUT_BUFFER_TOO_SMALL ;
 int PROVerr (int ,int ) ;
 int tdes_wrap_cipher_internal (int *,unsigned char*,unsigned char const*,size_t) ;

__attribute__((used)) static int tdes_wrap_cipher(void *vctx,
                            unsigned char *out, size_t *outl, size_t outsize,
                            const unsigned char *in, size_t inl)
{
    PROV_CIPHER_CTX *ctx = (PROV_CIPHER_CTX *)vctx;
    int ret;

    *outl = 0;
    if (outsize < inl) {
        PROVerr(0, PROV_R_OUTPUT_BUFFER_TOO_SMALL);
        return 0;
    }

    ret = tdes_wrap_cipher_internal(ctx, out, in, inl);
    if (ret <= 0)
        return 0;

    *outl = ret;
    return 1;
}
