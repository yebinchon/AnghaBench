
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_hwdec_ctx {int hw_imgfmt; int* supported_formats; } ;



__attribute__((used)) static bool vo_supports(struct mp_hwdec_ctx *ctx, int hw_fmt, int sw_fmt)
{
    if (!ctx->hw_imgfmt)
        return 1;
    if (ctx->hw_imgfmt != hw_fmt)
        return 0;

    for (int i = 0; ctx->supported_formats && ctx->supported_formats[i]; i++) {
        if (ctx->supported_formats[i] == sw_fmt)
            return 1;
    }

    return 0;
}
