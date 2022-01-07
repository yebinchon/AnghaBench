
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* imprint; long imprint_len; } ;
typedef TYPE_1__ TS_VERIFY_CTX ;



unsigned char *TS_VERIFY_CTX_set_imprint(TS_VERIFY_CTX *ctx,
                                         unsigned char *hexstr, long len)
{
    ctx->imprint = hexstr;
    ctx->imprint_len = len;
    return ctx->imprint;
}
