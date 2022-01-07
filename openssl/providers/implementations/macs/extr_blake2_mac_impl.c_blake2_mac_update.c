
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blake2_mac_data_st {int ctx; } ;


 int BLAKE2_UPDATE (int *,unsigned char const*,size_t) ;

__attribute__((used)) static int blake2_mac_update(void *vmacctx,
                             const unsigned char *data, size_t datalen)
{
    struct blake2_mac_data_st *macctx = vmacctx;

    return BLAKE2_UPDATE(&macctx->ctx, data, datalen);
}
