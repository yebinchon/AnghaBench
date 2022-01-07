
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd_ass_priv {int ass_library; int shadow_track; int ass_track; scalar_t__ converter; } ;
struct sd {struct sd_ass_priv* priv; } ;


 int ass_free_track (int ) ;
 int ass_library_done (int ) ;
 int enable_output (struct sd*,int) ;
 int lavc_conv_uninit (scalar_t__) ;

__attribute__((used)) static void uninit(struct sd *sd)
{
    struct sd_ass_priv *ctx = sd->priv;

    if (ctx->converter)
        lavc_conv_uninit(ctx->converter);
    ass_free_track(ctx->ass_track);
    ass_free_track(ctx->shadow_track);
    enable_output(sd, 0);
    ass_library_done(ctx->ass_library);
}
