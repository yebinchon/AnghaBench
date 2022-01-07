
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_sws_context {int dummy; } ;


 int mp_sws_supports_formats (struct mp_sws_context*,int,int) ;

__attribute__((used)) static bool supports_fmts(void *pctx, int imgfmt_dst, int imgfmt_src)
{
    struct mp_sws_context *ctx = pctx;
    return mp_sws_supports_formats(ctx, imgfmt_dst, imgfmt_src);
}
