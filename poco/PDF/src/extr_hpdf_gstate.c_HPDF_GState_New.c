
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int member_7; int member_6; int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_15__ {int member_2; int member_1; TYPE_1__ member_0; } ;
struct TYPE_12__ {int member_0; int member_3; int member_5; int member_4; int member_2; int member_1; } ;
struct TYPE_14__ {scalar_t__ depth; struct TYPE_14__* prev; int writing_mode; scalar_t__ font_size; int * font; scalar_t__ gray_stroke; scalar_t__ gray_fill; void* cmyk_stroke; void* cmyk_fill; void* rgb_stroke; void* rgb_fill; void* cs_fill; void* cs_stroke; int text_rise; int rendering_mode; int text_leading; int h_scalling; int word_space; int char_space; int flatness; TYPE_5__ dash_mode; int miter_limit; int line_join; int line_cap; int line_width; TYPE_2__ trans_matrix; } ;
struct TYPE_13__ {int error; } ;
typedef TYPE_2__ HPDF_TransMatrix ;
typedef void* HPDF_RGBColor ;
typedef TYPE_3__* HPDF_MMgr ;
typedef int HPDF_GState_Rec ;
typedef TYPE_4__* HPDF_GState ;
typedef TYPE_5__ HPDF_DashMode ;
typedef void* HPDF_CMYKColor ;


 void* HPDF_CS_DEVICE_GRAY ;
 int HPDF_DEF_CHARSPACE ;
 int HPDF_DEF_FLATNESS ;
 int HPDF_DEF_HSCALING ;
 int HPDF_DEF_LEADING ;
 int HPDF_DEF_LINECAP ;
 int HPDF_DEF_LINEJOIN ;
 int HPDF_DEF_LINEWIDTH ;
 int HPDF_DEF_MITERLIMIT ;
 int HPDF_DEF_RENDERING_MODE ;
 int HPDF_DEF_RISE ;
 int HPDF_DEF_WORDSPACE ;
 int HPDF_EXCEED_GSTATE_LIMIT ;
 TYPE_4__* HPDF_GetMem (TYPE_3__*,int) ;
 scalar_t__ HPDF_LIMIT_MAX_GSTATE ;
 int HPDF_SetError (int ,int ,int ) ;
 int HPDF_WMODE_HORIZONTAL ;

HPDF_GState
HPDF_GState_New (HPDF_MMgr mmgr,
                  HPDF_GState current)
{
    HPDF_GState gstate;

    if (current && current->depth >= HPDF_LIMIT_MAX_GSTATE) {
        HPDF_SetError (mmgr->error, HPDF_EXCEED_GSTATE_LIMIT, 0);

        return ((void*)0);
    }

    gstate = HPDF_GetMem (mmgr, sizeof(HPDF_GState_Rec));
    if (!gstate)
        return ((void*)0);

    if (current) {
        gstate->trans_matrix = current->trans_matrix;
        gstate->line_width = current->line_width;
        gstate->line_cap = current->line_cap;
        gstate->line_join = current->line_join;
        gstate->miter_limit = current->miter_limit;
        gstate->dash_mode = current->dash_mode;
        gstate->flatness = current->flatness;

        gstate->char_space = current->char_space;
        gstate->word_space = current->word_space;
        gstate->h_scalling = current->h_scalling;
        gstate->text_leading = current->text_leading;
        gstate->rendering_mode = current->rendering_mode;
        gstate->text_rise = current->text_rise;

        gstate->cs_stroke = current->cs_stroke;
        gstate->cs_fill = current->cs_fill;
        gstate->rgb_fill = current->rgb_fill;
        gstate->rgb_stroke = current->rgb_stroke;
        gstate->cmyk_fill = current->cmyk_fill;
        gstate->cmyk_stroke = current->cmyk_stroke;
        gstate->gray_fill = current->gray_fill;
        gstate->gray_stroke = current->gray_stroke;

        gstate->font = current->font;
        gstate->font_size = current->font_size;
        gstate->writing_mode = current->writing_mode;

        gstate->prev = current;
        gstate->depth = current->depth + 1;
    } else {
        HPDF_TransMatrix DEF_MATRIX = {1, 0, 0, 1, 0, 0};
        HPDF_RGBColor DEF_RGB_COLOR = {0, 0, 0};
        HPDF_CMYKColor DEF_CMYK_COLOR = {0, 0, 0, 0};
        HPDF_DashMode DEF_DASH_MODE = {{0, 0, 0, 0, 0, 0, 0, 0}, 0, 0};

        gstate->trans_matrix = DEF_MATRIX;
        gstate->line_width = HPDF_DEF_LINEWIDTH;
        gstate->line_cap = HPDF_DEF_LINECAP;
        gstate->line_join = HPDF_DEF_LINEJOIN;
        gstate->miter_limit = HPDF_DEF_MITERLIMIT;
        gstate->dash_mode = DEF_DASH_MODE;
        gstate->flatness = HPDF_DEF_FLATNESS;

        gstate->char_space = HPDF_DEF_CHARSPACE;
        gstate->word_space = HPDF_DEF_WORDSPACE;
        gstate->h_scalling = HPDF_DEF_HSCALING;
        gstate->text_leading = HPDF_DEF_LEADING;
        gstate->rendering_mode = HPDF_DEF_RENDERING_MODE;
        gstate->text_rise = HPDF_DEF_RISE;

        gstate->cs_stroke = HPDF_CS_DEVICE_GRAY;
        gstate->cs_fill = HPDF_CS_DEVICE_GRAY;
        gstate->rgb_fill = DEF_RGB_COLOR;
        gstate->rgb_stroke = DEF_RGB_COLOR;
        gstate->cmyk_fill = DEF_CMYK_COLOR;
        gstate->cmyk_stroke = DEF_CMYK_COLOR;
        gstate->gray_fill = 0;
        gstate->gray_stroke = 0;

        gstate->font = ((void*)0);
        gstate->font_size = 0;
        gstate->writing_mode = HPDF_WMODE_HORIZONTAL;

        gstate->prev = ((void*)0);
        gstate->depth = 1;
    }

    return gstate;
}
