
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int attr; } ;
struct TYPE_4__ {int* used; int * widths; int fontdef; int encoder; } ;
typedef int HPDF_UNICODE ;
typedef int HPDF_INT ;
typedef TYPE_1__* HPDF_FontAttr ;
typedef TYPE_2__* HPDF_Font ;
typedef size_t HPDF_BYTE ;


 int HPDF_Encoder_ToUnicode (int ,size_t) ;
 int HPDF_TTFontDef_GetCharWidth (int ,int ) ;

__attribute__((used)) static HPDF_INT
CharWidth (HPDF_Font font,
           HPDF_BYTE code)
{
    HPDF_FontAttr attr = (HPDF_FontAttr)font->attr;

    if (attr->used[code] == 0) {
        HPDF_UNICODE unicode = HPDF_Encoder_ToUnicode (attr->encoder, code);

        attr->used[code] = 1;
        attr->widths[code] = HPDF_TTFontDef_GetCharWidth(attr->fontdef,
                unicode);
    }

    return attr->widths[code];
}
