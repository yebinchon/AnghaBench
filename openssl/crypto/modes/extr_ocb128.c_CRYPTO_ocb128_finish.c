
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OCB128_CONTEXT ;


 int ocb_finish (int *,unsigned char*,size_t,int ) ;

int CRYPTO_ocb128_finish(OCB128_CONTEXT *ctx, const unsigned char *tag,
                         size_t len)
{
    return ocb_finish(ctx, (unsigned char*)tag, len, 0);
}
