
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int attr; } ;
struct TYPE_4__ {int* widths; } ;
typedef size_t HPDF_UINT ;
typedef int HPDF_REAL ;
typedef TYPE_1__* HPDF_FontAttr ;
typedef TYPE_2__* HPDF_Font ;
typedef size_t HPDF_BYTE ;
typedef int HPDF_BOOL ;


 scalar_t__ HPDF_IS_WHITE_SPACE (size_t) ;
 int HPDF_PTRACE (char*) ;

__attribute__((used)) static HPDF_UINT
Type1Font_MeasureText (HPDF_Font font,
                       const HPDF_BYTE *text,
                       HPDF_UINT len,
                       HPDF_REAL width,
                       HPDF_REAL font_size,
                       HPDF_REAL char_space,
                       HPDF_REAL word_space,
                       HPDF_BOOL wordwrap,
                       HPDF_REAL *real_width)
{
    HPDF_REAL w = 0;
    HPDF_UINT tmp_len = 0;
    HPDF_UINT i;
    HPDF_FontAttr attr = (HPDF_FontAttr)font->attr;

    HPDF_PTRACE ((" HPDF_Type1Font_MeasureText\n"));

    for (i = 0; i < len; i++) {
        HPDF_BYTE b = text[i];

        if (HPDF_IS_WHITE_SPACE(b)) {
            tmp_len = i + 1;

            if (real_width)
                *real_width = w;

            w += word_space;
        } else if (!wordwrap) {
            tmp_len = i;

            if (real_width)
                *real_width = w;
        }

        w += attr->widths[b] * font_size / 1000;


        if (w > width || b == 0x0A)
            return tmp_len;

        if (i > 0)
            w += char_space;
    }


    if (real_width)
        *real_width = w;

    return len;
}
