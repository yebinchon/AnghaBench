
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PROV_GCM_CTX ;


 int gcm_cipher_internal (int *,unsigned char*,size_t*,int *,int ) ;

int gcm_stream_final(void *vctx, unsigned char *out, size_t *outl,
                     size_t outsize)
{
    PROV_GCM_CTX *ctx = (PROV_GCM_CTX *)vctx;
    int i;

    i = gcm_cipher_internal(ctx, out, outl, ((void*)0), 0);
    if (i <= 0)
        return 0;

    *outl = 0;
    return 1;
}
