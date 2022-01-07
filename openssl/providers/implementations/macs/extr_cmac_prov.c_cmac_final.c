
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmac_data_st {int ctx; } ;


 int CMAC_Final (int ,unsigned char*,size_t*) ;

__attribute__((used)) static int cmac_final(void *vmacctx, unsigned char *out, size_t *outl,
                      size_t outsize)
{
    struct cmac_data_st *macctx = vmacctx;

    return CMAC_Final(macctx->ctx, out, outl);
}
