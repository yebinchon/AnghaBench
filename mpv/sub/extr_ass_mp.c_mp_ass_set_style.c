
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ a; } ;
struct osd_style_opts {double font_size; double border_size; double shadow_offset; double spacing; double margin_x; double margin_y; int align_y; int italic; int bold; int blur; int justify; scalar_t__ align_x; TYPE_3__ shadow_color; TYPE_3__ back_color; TYPE_3__ border_color; TYPE_3__ color; scalar_t__ font; } ;
struct TYPE_4__ {double FontSize; int BorderStyle; double Outline; double Shadow; double Spacing; double MarginL; double MarginR; double MarginV; int ScaleX; int ScaleY; int Italic; int Bold; int Blur; int Justify; scalar_t__ Alignment; void* BackColour; void* OutlineColour; void* PrimaryColour; void* SecondaryColour; scalar_t__ FontName; } ;
typedef TYPE_1__ ASS_Style ;


 void* MP_ASS_COLOR (TYPE_3__) ;
 int free (scalar_t__) ;
 scalar_t__ strcmp (scalar_t__,scalar_t__) ;
 scalar_t__ strdup (scalar_t__) ;

void mp_ass_set_style(ASS_Style *style, double res_y,
                      const struct osd_style_opts *opts)
{
    if (!style)
        return;

    if (opts->font) {
        if (!style->FontName || strcmp(style->FontName, opts->font) != 0) {
            free(style->FontName);
            style->FontName = strdup(opts->font);
        }
    }



    double scale = res_y / 720.0;

    style->FontSize = opts->font_size * scale;
    style->PrimaryColour = MP_ASS_COLOR(opts->color);
    style->SecondaryColour = style->PrimaryColour;
    style->OutlineColour = MP_ASS_COLOR(opts->border_color);
    if (opts->back_color.a) {
        style->BackColour = MP_ASS_COLOR(opts->back_color);
        style->BorderStyle = 4;
    } else {
        style->BackColour = MP_ASS_COLOR(opts->shadow_color);
        style->BorderStyle = 1;
    }
    style->Outline = opts->border_size * scale;
    style->Shadow = opts->shadow_offset * scale;
    style->Spacing = opts->spacing * scale;
    style->MarginL = opts->margin_x * scale;
    style->MarginR = style->MarginL;
    style->MarginV = opts->margin_y * scale;
    style->ScaleX = 1.;
    style->ScaleY = 1.;
    style->Alignment = 1 + (opts->align_x + 1) + (opts->align_y + 2) % 3 * 4;



    style->Blur = opts->blur;
    style->Bold = opts->bold;
    style->Italic = opts->italic;
}
