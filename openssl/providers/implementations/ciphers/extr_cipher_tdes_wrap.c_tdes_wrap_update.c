
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROV_R_CIPHER_OPERATION_FAILED ;
 int PROV_R_OUTPUT_BUFFER_TOO_SMALL ;
 int PROVerr (int ,int ) ;
 int tdes_wrap_cipher (void*,unsigned char*,size_t*,size_t,unsigned char const*,size_t) ;

__attribute__((used)) static int tdes_wrap_update(void *vctx, unsigned char *out, size_t *outl,
                            size_t outsize, const unsigned char *in,
                            size_t inl)
{
    *outl = 0;
    if (outsize < inl) {
        PROVerr(0, PROV_R_OUTPUT_BUFFER_TOO_SMALL);
        return 0;
    }

    if (!tdes_wrap_cipher(vctx, out, outl, outsize, in, inl)) {
        PROVerr(0, PROV_R_CIPHER_OPERATION_FAILED);
        return 0;
    }
    return 1;
}
