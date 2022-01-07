
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd_ass_priv {int * ass_renderer; int ass_library; } ;
struct sd {int log; int global; TYPE_1__* opts; struct sd_ass_priv* priv; } ;
struct TYPE_2__ {int sub_style; } ;


 int ass_renderer_done (int *) ;
 int * ass_renderer_init (int ) ;
 int mp_ass_configure_fonts (int *,int ,int ,int ) ;

__attribute__((used)) static void enable_output(struct sd *sd, bool enable)
{
    struct sd_ass_priv *ctx = sd->priv;
    if (enable == !!ctx->ass_renderer)
        return;
    if (ctx->ass_renderer) {
        ass_renderer_done(ctx->ass_renderer);
        ctx->ass_renderer = ((void*)0);
    } else {
        ctx->ass_renderer = ass_renderer_init(ctx->ass_library);

        mp_ass_configure_fonts(ctx->ass_renderer, sd->opts->sub_style,
                               sd->global, sd->log);
    }
}
