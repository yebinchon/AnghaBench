
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmac_data_st {int ctx; } ;


 int EVP_DigestUpdate (int ,unsigned char const*,size_t) ;

__attribute__((used)) static int kmac_update(void *vmacctx, const unsigned char *data,
                       size_t datalen)
{
    struct kmac_data_st *kctx = vmacctx;

    return EVP_DigestUpdate(kctx->ctx, data, datalen);
}
