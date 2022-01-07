
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t l; } ;
typedef TYPE_1__ PROV_CCM_CTX ;



__attribute__((used)) static size_t ccm_get_ivlen(PROV_CCM_CTX *ctx)
{
    return 15 - ctx->l;
}
