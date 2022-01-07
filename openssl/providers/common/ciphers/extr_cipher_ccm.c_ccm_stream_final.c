
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PROV_CCM_CTX ;


 int ccm_cipher_internal (int *,unsigned char*,size_t*,int *,int ) ;

int ccm_stream_final(void *vctx, unsigned char *out, size_t *outl,
                            size_t outsize)
{
    PROV_CCM_CTX *ctx = (PROV_CCM_CTX *)vctx;
    int i;

    i = ccm_cipher_internal(ctx, out, outl, ((void*)0), 0);
    if (i <= 0)
        return 0;

    *outl = 0;
    return 1;
}
