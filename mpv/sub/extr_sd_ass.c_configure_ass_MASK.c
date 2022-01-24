#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sd_ass_priv {int /*<<< orphan*/ * ass_renderer; } ;
struct sd {struct sd_ass_priv* priv; struct mp_subtitle_opts* opts; } ;
struct mp_subtitle_opts {int ass_style_override; int sub_scale_with_window; int sub_use_margins; int sub_scale_by_window; int ass_scale_with_window; int ass_use_margins; int sub_pos; float ass_line_spacing; int ass_hinting; float sub_scale; int /*<<< orphan*/  sub_style; scalar_t__ ass_justify; int /*<<< orphan*/  ass_shaper; } ;
struct mp_osd_res {float h; int mt; int mb; int /*<<< orphan*/  mr; int /*<<< orphan*/  ml; int /*<<< orphan*/  w; } ;
struct TYPE_7__ {int /*<<< orphan*/  FontName; int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {scalar_t__ default_style; scalar_t__ n_styles; int PlayResY; TYPE_2__* styles; } ;
typedef  TYPE_1__ ASS_Track ;
typedef  TYPE_2__ ASS_Style ;
typedef  int /*<<< orphan*/  ASS_Renderer ;

/* Variables and functions */
 int ASS_OVERRIDE_BIT_ALIGNMENT ; 
 int ASS_OVERRIDE_BIT_FONT_SIZE ; 
 int ASS_OVERRIDE_BIT_JUSTIFY ; 
 int ASS_OVERRIDE_BIT_STYLE ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,float) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct sd *sd, struct mp_osd_res *dim,
                          bool converted, ASS_Track *track)
{
    struct mp_subtitle_opts *opts = sd->opts;
    struct sd_ass_priv *ctx = sd->priv;
    ASS_Renderer *priv = ctx->ass_renderer;

    FUNC2(priv, dim->w, dim->h);
    FUNC6(priv, dim->mt, dim->mb, dim->ml, dim->mr);

    bool set_use_margins = false;
    int set_sub_pos = 0;
    float set_line_spacing = 0;
    float set_font_scale = 1;
    int set_hinting = 0;
    bool set_scale_with_window = false;
    bool set_scale_by_window = true;
    bool total_override = false;
    // With forced overrides, apply the --sub-* specific options
    if (converted || opts->ass_style_override == 3) { // 'force'
        set_scale_with_window = opts->sub_scale_with_window;
        set_use_margins = opts->sub_use_margins;
        set_scale_by_window = opts->sub_scale_by_window;
        total_override = true;
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
        set_font_scale *= dim->h / (float)FUNC0(vidh, 1);
    }
    if (!set_scale_by_window) {
        double factor = dim->h / 720.0;
        if (factor != 0.0)
            set_font_scale /= factor;
    }
    FUNC10(priv, set_use_margins);
    FUNC4(priv, set_sub_pos);
    FUNC9(priv, opts->ass_shaper);
    int set_force_flags = 0;
    if (total_override)
        set_force_flags |= ASS_OVERRIDE_BIT_STYLE | ASS_OVERRIDE_BIT_FONT_SIZE;
    if (opts->ass_style_override == 4) // 'scale'
        set_force_flags |= ASS_OVERRIDE_BIT_FONT_SIZE;
#if LIBASS_VERSION >= 0x01201001
    if (converted)
        set_force_flags |= ASS_OVERRIDE_BIT_ALIGNMENT;
#endif
#ifdef ASS_JUSTIFY_AUTO
    if ((converted || opts->ass_style_override) && opts->ass_justify)
        set_force_flags |= ASS_OVERRIDE_BIT_JUSTIFY;
#endif
    FUNC8(priv, set_force_flags);
    ASS_Style style = {0};
    FUNC12(&style, 288, opts->sub_style);
    FUNC7(priv, &style);
    FUNC11(style.FontName);
    if (converted && track->default_style < track->n_styles) {
        FUNC12(track->styles + track->default_style,
                         track->PlayResY, opts->sub_style);
    }
    FUNC1(priv, set_font_scale);
    FUNC3(priv, set_hinting);
    FUNC5(priv, set_line_spacing);
}