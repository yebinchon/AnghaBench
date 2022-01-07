
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ key_length; } ;
struct blake2_mac_data_st {int key; TYPE_1__ params; int ctx; } ;


 int BLAKE2_INIT_KEY (int *,TYPE_1__*,int ) ;
 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int PROV_R_NO_KEY_SET ;

__attribute__((used)) static int blake2_mac_init(void *vmacctx)
{
    struct blake2_mac_data_st *macctx = vmacctx;


    if (macctx->params.key_length == 0) {
        ERR_raise(ERR_LIB_PROV, PROV_R_NO_KEY_SET);
        return 0;
    }

    return BLAKE2_INIT_KEY(&macctx->ctx, &macctx->params, macctx->key);
}
