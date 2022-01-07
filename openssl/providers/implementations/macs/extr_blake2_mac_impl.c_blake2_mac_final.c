
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blake2_mac_data_st {int ctx; } ;


 int BLAKE2_FINAL (unsigned char*,int *) ;

__attribute__((used)) static int blake2_mac_final(void *vmacctx,
                            unsigned char *out, size_t *outl,
                            size_t outsize)
{
    struct blake2_mac_data_st *macctx = vmacctx;

    return BLAKE2_FINAL(out, &macctx->ctx);
}
