
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int byte; } ;
struct TYPE_5__ {TYPE_1__ tag; } ;
typedef TYPE_2__ SIV128_CONTEXT ;


 size_t SIV_LEN ;
 int memcpy (int ,unsigned char const*,size_t) ;

int CRYPTO_siv128_set_tag(SIV128_CONTEXT *ctx, const unsigned char *tag, size_t len)
{
    if (len != SIV_LEN)
        return 0;


    memcpy(ctx->tag.byte, tag, len);
    return 1;
}
