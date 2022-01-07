
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sd_ass_priv {int * ass_renderer; } ;
struct sd {struct sd_ass_priv* priv; struct mp_subtitle_opts* opts; } ;
struct mp_subtitle_opts {int ass_style_override; int sub_scale_with_window; int sub_use_margins; int sub_scale_by_window; int ass_scale_with_window; int ass_use_margins; int sub_pos; float ass_line_spacing; int ass_hinting; float sub_scale; int sub_style; scalar_t__ ass_justify; int ass_shaper; } ;
struct mp_osd_res {float h; int mt; int mb; int mr; int ml; int w; } ;
struct TYPE_7__ {int FontName; int member_0; } ;
struct TYPE_6__ {scalar_t__ default_style; scalar_t__ n_styles; int PlayResY; TYPE_2__* styles; } ;
typedef TYPE_1__ ASS_Track ;
typedef TYPE_2__ ASS_Style ;
typedef int ASS_Renderer ;


 int ASS_OVERRIDE_BIT_ALIGNMENT ;
 int ASS_OVERRIDE_BIT_FONT_SIZE ;
 int ASS_OVERRIDE_BIT_JUSTIFY ;
 int ASS_OVERRIDE_BIT_STYLE ;
 scalar_t__ MPMAX (int,int) ;
 int ass_set_font_scale (int *,float) ;
 int ass_set_frame_size (int *,int ,float) ;
 int ass_set_hinting (int *,int) ;
 int ass_set_line_position (int *,int) ;
 int ass_set_line_spacing (int *,float) ;
 int ass_set_margins (int *,int,int,int ,int ) ;
 int ass_set_selective_style_override (int *,TYPE_2__*) ;
 int ass_set_selective_style_override_enabled (int *,int) ;
 int ass_set_shaper (int *,int ) ;
 int ass_set_use_margins (int *,int) ;
 int free (int ) ;
 int mp_ass_set_style (TYPE_2__*,int,int ) ;

__attribute__((used)) static void configure_ass(struct sd *sd, struct mp_osd_res *dim,
                          bool converted, ASS_Track *track)
{
    struct mp_subtitle_opts *opts = sd->opts;
    struct sd_ass_priv *ctx = sd->priv;
    ASS_Renderer *priv = ctx->ass_renderer;

    ass_set_frame_size(priv, dim->w, dim->h);
    ass_set_margins(priv, dim->mt, dim->mb, dim->ml, dim->mr);

    bool set_use_margins = 0;
    int set_sub_pos = 0;
    float set_line_spacing = 0;
    float set_font_scale = 1;
    int set_hinting = 0;
    bool set_scale_with_window = 0;
    bool set_scale_by_window = 1;
    bool total_override = 0;

    if (converted || opts->ass_style_override == 3) {
        set_scale_with_window = opts->sub_scale_with_window;
        set_use_margins = opts->sub_use_margins;
        set_scale_by_window = opts->sub_scale_by_window;
        total_override = 1;
    } else {
        set_scale_with_window = opts->ass_scale_with_window;
        set_use_margins = opts->ass_use_margins;
    }
    if (converted || opts->ass_style_override) {
        set_sub_pos = 100 - opts->sub_pos;
        set_line_spacing = opts->ass_line_spacing;
        set_hinting = opts->ass_hinting;
        set_font_scale = opts->sub_scale;
    }
    if (set_scale_with_window) {
        int vidh = dim->h - (dim->mt + dim->mb);
        set_font_scale *= dim->h / (float)MPMAX(vidh, 1);
    }
    if (!set_scale_by_window) {
        double factor = dim->h / 720.0;
        if (factor != 0.0)
            set_font_scale /= factor;
    }
    ass_set_use_margins(priv, set_use_margins);
    ass_set_line_position(priv, set_sub_pos);
    ass_set_shaper(priv, opts->ass_shaper);
    int set_force_flags = 0;
    if (total_override)
        set_force_flags |= ASS_OVERRIDE_BIT_STYLE | ASS_OVERRIDE_BIT_FONT_SIZE;
    if (opts->ass_style_override == 4)
        set_force_flags |= ASS_OVERRIDE_BIT_FONT_SIZE;
    ass_set_selective_style_override_enabled(priv, set_force_flags);
    ASS_Style style = {0};
    mp_ass_set_style(&style, 288, opts->sub_style);
    ass_set_selective_style_override(priv, &style);
    free(style.FontName);
    if (converted && track->default_style < track->n_styles) {
        mp_ass_set_style(track->styles + track->default_style,
                         track->PlayResY, opts->sub_style);
    }
    ass_set_font_scale(priv, set_font_scale);
    ass_set_hinting(priv, set_hinting);
    ass_set_line_spacing(priv, set_line_spacing);
}
