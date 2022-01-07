
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int error; int attr; } ;
struct TYPE_5__ {int* end_count; int seg_count_x2; scalar_t__ format; int* glyph_id_array; int* start_count; int* id_range_offset; int* id_delta; size_t glyph_id_array_count; } ;
struct TYPE_6__ {TYPE_1__ cmap; } ;
typedef int HPDF_UINT16 ;
typedef size_t HPDF_UINT ;
typedef TYPE_2__* HPDF_TTFontDefAttr ;
typedef TYPE_3__* HPDF_FontDef ;


 int HPDF_PTRACE (char*) ;
 int HPDF_SetError (int ,int ,int ) ;
 int HPDF_TTF_INVALID_CMAP ;

HPDF_UINT16
HPDF_TTFontDef_GetGlyphid (HPDF_FontDef fontdef,
                            HPDF_UINT16 unicode)
{
    HPDF_TTFontDefAttr attr = (HPDF_TTFontDefAttr)fontdef->attr;
    HPDF_UINT16 *pend_count = attr->cmap.end_count;
    HPDF_UINT seg_count = attr->cmap.seg_count_x2 / 2;
    HPDF_UINT i;

    HPDF_PTRACE((" HPDF_TTFontDef_GetGlyphid\n"));


    if (attr->cmap.format == 0) {
        unicode &= 0xFF;
        return attr->cmap.glyph_id_array[unicode];
    }


    if (attr->cmap.seg_count_x2 == 0) {
        HPDF_SetError (fontdef->error, HPDF_TTF_INVALID_CMAP, 0);
        return 0;
    }

    for (i = 0; i < seg_count; i++) {
        if (unicode <= *pend_count)
            break;
        pend_count++;
    }

    if (attr->cmap.start_count[i] > unicode) {
        HPDF_PTRACE((" HPDF_TTFontDef_GetGlyphid undefined char(0x%04X)\n",
                    unicode));
        return 0;
    }

    if (attr->cmap.id_range_offset[i] == 0) {
        HPDF_PTRACE((" HPDF_TTFontDef_GetGlyphid idx=%u code=%u "
                    " ret=%u\n", i, unicode,
                    unicode + attr->cmap.id_delta[i]));

        return (HPDF_UINT16)(unicode + attr->cmap.id_delta[i]);
    } else {
        HPDF_UINT idx = attr->cmap.id_range_offset[i] / 2 +
            (unicode - attr->cmap.start_count[i]) - (seg_count - i);

        if (idx > attr->cmap.glyph_id_array_count) {
            HPDF_PTRACE((" HPDF_TTFontDef_GetGlyphid[%u] %u > %u\n",
                        i, idx, (HPDF_UINT)attr->cmap.glyph_id_array_count));
            return 0;
        } else {
            HPDF_UINT16 gid = (HPDF_UINT16)(attr->cmap.glyph_id_array[idx] +
                attr->cmap.id_delta[i]);
            HPDF_PTRACE((" HPDF_TTFontDef_GetGlyphid idx=%u unicode=0x%04X "
                        "id=%u\n", idx, unicode, gid));
            return gid;
        }
    }
}
