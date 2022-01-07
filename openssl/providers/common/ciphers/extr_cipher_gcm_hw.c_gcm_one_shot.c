
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* hw; int taglen; } ;
struct TYPE_7__ {int (* cipherfinal ) (TYPE_2__*,unsigned char*) ;int (* cipherupdate ) (TYPE_2__*,unsigned char const*,size_t,unsigned char*) ;int (* aadupdate ) (TYPE_2__*,unsigned char*,size_t) ;} ;
typedef TYPE_2__ PROV_GCM_CTX ;


 int GCM_TAG_MAX_SIZE ;
 int stub1 (TYPE_2__*,unsigned char*,size_t) ;
 int stub2 (TYPE_2__*,unsigned char const*,size_t,unsigned char*) ;
 int stub3 (TYPE_2__*,unsigned char*) ;

int gcm_one_shot(PROV_GCM_CTX *ctx, unsigned char *aad, size_t aad_len,
                 const unsigned char *in, size_t in_len,
                 unsigned char *out, unsigned char *tag, size_t tag_len)
{
    int ret = 0;


    if (!ctx->hw->aadupdate(ctx, aad, aad_len))
        goto err;
    if (!ctx->hw->cipherupdate(ctx, in, in_len, out))
        goto err;
    ctx->taglen = GCM_TAG_MAX_SIZE;
    if (!ctx->hw->cipherfinal(ctx, tag))
        goto err;
    ret = 1;

err:
    return ret;
}
