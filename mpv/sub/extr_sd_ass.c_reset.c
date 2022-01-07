
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd_ass_priv {scalar_t__ converter; scalar_t__ num_seen_packets; int ass_track; scalar_t__ duration_unknown; } ;
struct sd {int preload_ok; TYPE_1__* opts; struct sd_ass_priv* priv; } ;
struct TYPE_2__ {scalar_t__ sub_clear_on_seek; } ;


 int ass_flush_events (int ) ;
 int lavc_conv_reset (scalar_t__) ;

__attribute__((used)) static void reset(struct sd *sd)
{
    struct sd_ass_priv *ctx = sd->priv;
    if (sd->opts->sub_clear_on_seek || ctx->duration_unknown) {
        ass_flush_events(ctx->ass_track);
        ctx->num_seen_packets = 0;
        sd->preload_ok = 0;
    }
    if (ctx->converter)
        lavc_conv_reset(ctx->converter);
}
