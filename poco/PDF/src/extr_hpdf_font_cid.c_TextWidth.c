
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_11__ ;


struct TYPE_21__ {scalar_t__* DW2; } ;
struct TYPE_20__ {scalar_t__ (* byte_type_fn ) (TYPE_5__*,int *) ;int (* to_unicode_fn ) (TYPE_5__*,int) ;} ;
struct TYPE_19__ {int attr; } ;
struct TYPE_18__ {scalar_t__ writing_mode; TYPE_11__* fontdef; TYPE_5__* encoder; } ;
struct TYPE_17__ {int numwords; scalar_t__ width; int numspace; int numchars; int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_16__ {scalar_t__ top; scalar_t__ bottom; } ;
struct TYPE_15__ {scalar_t__ type; TYPE_1__ font_bbox; int attr; } ;
typedef int HPDF_UNICODE ;
typedef int HPDF_UINT16 ;
typedef scalar_t__ HPDF_UINT ;
typedef TYPE_2__ HPDF_TextWidth ;
typedef int HPDF_ParseText_Rec ;
typedef scalar_t__ HPDF_INT ;
typedef TYPE_3__* HPDF_FontAttr ;
typedef TYPE_4__* HPDF_Font ;
typedef TYPE_5__* HPDF_Encoder ;
typedef TYPE_6__* HPDF_CIDFontDefAttr ;
typedef scalar_t__ HPDF_ByteType ;
typedef int HPDF_BYTE ;


 scalar_t__ HPDF_BYTE_TYPE_LEAD ;
 scalar_t__ HPDF_BYTE_TYPE_TRIAL ;
 scalar_t__ HPDF_CIDFontDef_GetCIDWidth (TYPE_11__*,int) ;
 int HPDF_CMapEncoder_ToCID (TYPE_5__*,int) ;
 int HPDF_Encoder_SetParseText (TYPE_5__*,int *,int const*,scalar_t__) ;
 scalar_t__ HPDF_FONTDEF_TYPE_CID ;
 scalar_t__ HPDF_IS_WHITE_SPACE (int) ;
 int HPDF_PTRACE (char*) ;
 scalar_t__ HPDF_TTFontDef_GetCharWidth (TYPE_11__*,int ) ;
 scalar_t__ HPDF_WMODE_HORIZONTAL ;
 scalar_t__ stub1 (TYPE_5__*,int *) ;
 int stub2 (TYPE_5__*,int) ;

__attribute__((used)) static HPDF_TextWidth
TextWidth (HPDF_Font font,
            const HPDF_BYTE *text,
            HPDF_UINT len)
{
    HPDF_TextWidth tw = {0, 0, 0, 0};
    HPDF_FontAttr attr = (HPDF_FontAttr)font->attr;
    HPDF_ParseText_Rec parse_state;
    HPDF_Encoder encoder = attr->encoder;
    HPDF_UINT i = 0;
    HPDF_INT dw2;
    HPDF_BYTE b = 0;

    HPDF_PTRACE ((" HPDF_Type0Font_TextWidth\n"));

    if (attr->fontdef->type == HPDF_FONTDEF_TYPE_CID) {
        HPDF_CIDFontDefAttr cid_fontdef_attr =
                    (HPDF_CIDFontDefAttr)attr->fontdef->attr;
        dw2 = cid_fontdef_attr->DW2[1];
    } else {
        dw2 = (HPDF_INT)(attr->fontdef->font_bbox.bottom -
                    attr->fontdef->font_bbox.top);
    }

    HPDF_Encoder_SetParseText (encoder, &parse_state, text, len);

    while (i < len) {
        HPDF_ByteType btype = (encoder->byte_type_fn)(encoder, &parse_state);
        HPDF_UINT16 cid;
        HPDF_UNICODE unicode;
        HPDF_UINT16 code;
        HPDF_UINT w = 0;

        b = *text++;
        code = b;

        if (btype == HPDF_BYTE_TYPE_LEAD) {
            code <<= 8;
            code = (HPDF_UINT16)(code + *text);
        }

        if (btype != HPDF_BYTE_TYPE_TRIAL) {
            if (attr->writing_mode == HPDF_WMODE_HORIZONTAL) {
                if (attr->fontdef->type == HPDF_FONTDEF_TYPE_CID) {

                    cid = HPDF_CMapEncoder_ToCID (encoder, code);
                    w = HPDF_CIDFontDef_GetCIDWidth (attr->fontdef, cid);
                } else {

                    unicode = (encoder->to_unicode_fn)(encoder, code);
                    w = HPDF_TTFontDef_GetCharWidth (attr->fontdef, unicode);
                }
            } else {
                w = -dw2;
            }

            tw.numchars++;
        }

        if (HPDF_IS_WHITE_SPACE(code)) {
            tw.numwords++;
            tw.numspace++;
        }

        tw.width += w;
        i++;
    }


    if (HPDF_IS_WHITE_SPACE(b))
        ;
    else
        tw.numwords++;

    return tw;
}
