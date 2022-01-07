
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poly1305_data_st {int poly1305; } ;


 int Poly1305_Final (int *,unsigned char*) ;

__attribute__((used)) static int poly1305_final(void *vmacctx, unsigned char *out, size_t *outl,
                          size_t outsize)
{
    struct poly1305_data_st *ctx = vmacctx;

    Poly1305_Final(&ctx->poly1305, out);
    return 1;
}
