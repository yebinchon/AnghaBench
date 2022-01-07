
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t digest_length; } ;
struct blake2_mac_data_st {TYPE_1__ params; } ;



__attribute__((used)) static size_t blake2_mac_size(void *vmacctx)
{
    struct blake2_mac_data_st *macctx = vmacctx;

    return macctx->params.digest_length;
}
