
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siphash_data_st {int siphash; } ;


 int SipHash_Update (int *,unsigned char const*,size_t) ;

__attribute__((used)) static int siphash_update(void *vmacctx, const unsigned char *data,
                       size_t datalen)
{
    struct siphash_data_st *ctx = vmacctx;

    SipHash_Update(&ctx->siphash, data, datalen);
    return 1;
}
