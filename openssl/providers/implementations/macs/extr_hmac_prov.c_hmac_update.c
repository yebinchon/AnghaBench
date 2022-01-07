
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hmac_data_st {int ctx; } ;


 int HMAC_Update (int ,unsigned char const*,size_t) ;

__attribute__((used)) static int hmac_update(void *vmacctx, const unsigned char *data,
                       size_t datalen)
{
    struct hmac_data_st *macctx = vmacctx;

    return HMAC_Update(macctx->ctx, data, datalen);
}
