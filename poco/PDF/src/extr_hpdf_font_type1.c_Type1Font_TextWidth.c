
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int error; int attr; } ;
struct TYPE_7__ {scalar_t__* widths; } ;
struct TYPE_6__ {int numwords; int numspace; int width; int numchars; int member_3; int member_2; int member_1; int member_0; } ;
typedef size_t HPDF_UINT ;
typedef TYPE_1__ HPDF_TextWidth ;
typedef TYPE_2__* HPDF_FontAttr ;
typedef TYPE_3__* HPDF_Font ;
typedef size_t HPDF_BYTE ;


 int HPDF_FONT_INVALID_WIDTHS_TABLE ;
 scalar_t__ HPDF_IS_WHITE_SPACE (size_t) ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SetError (int ,int ,int ) ;

__attribute__((used)) static HPDF_TextWidth
Type1Font_TextWidth (HPDF_Font font,
                      const HPDF_BYTE *text,
                      HPDF_UINT len)
{
    HPDF_FontAttr attr = (HPDF_FontAttr)font->attr;
    HPDF_TextWidth ret = {0, 0, 0, 0};
    HPDF_UINT i;
    HPDF_BYTE b = 0;

    HPDF_PTRACE ((" HPDF_Type1Font_TextWidth\n"));

    if (attr->widths) {
        for (i = 0; i < len; i++) {
            b = text[i];
            ret.numchars++;
            ret.width += attr->widths[b];

            if (HPDF_IS_WHITE_SPACE(b)) {
                ret.numspace++;
                ret.numwords++;
            }
        }
    } else
        HPDF_SetError (font->error, HPDF_FONT_INVALID_WIDTHS_TABLE, 0);


    if (HPDF_IS_WHITE_SPACE(b))
        ;
    else
        ret.numwords++;

    return ret;
}
