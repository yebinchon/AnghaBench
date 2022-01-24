#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_8__ ;
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;
typedef  struct TYPE_25__   TYPE_12__ ;

/* Type definitions */
struct TYPE_32__ {scalar_t__* DW2; TYPE_12__* widths; int /*<<< orphan*/  DW; } ;
struct TYPE_31__ {scalar_t__ cid; scalar_t__ width; } ;
struct TYPE_30__ {int /*<<< orphan*/  suppliment; int /*<<< orphan*/  ordering; int /*<<< orphan*/  registry; } ;
struct TYPE_29__ {int /*<<< orphan*/  attr; } ;
struct TYPE_28__ {int /*<<< orphan*/  mmgr; int /*<<< orphan*/  attr; } ;
struct TYPE_27__ {TYPE_4__* encoder; TYPE_1__* fontdef; } ;
struct TYPE_26__ {char* base_font; int /*<<< orphan*/  stemv; int /*<<< orphan*/  italic_angle; int /*<<< orphan*/  font_bbox; int /*<<< orphan*/  flags; int /*<<< orphan*/  missing_width; int /*<<< orphan*/  cap_height; int /*<<< orphan*/  descent; int /*<<< orphan*/  ascent; int /*<<< orphan*/  attr; } ;
struct TYPE_25__ {scalar_t__ count; } ;
typedef  int /*<<< orphan*/  HPDF_Xref ;
typedef  scalar_t__ HPDF_UINT16 ;
typedef  scalar_t__ HPDF_UINT ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_1__* HPDF_FontDef ;
typedef  TYPE_2__* HPDF_FontAttr ;
typedef  TYPE_3__* HPDF_Font ;
typedef  TYPE_4__* HPDF_Encoder ;
typedef  TYPE_3__* HPDF_Dict ;
typedef  TYPE_6__* HPDF_CMapEncoderAttr ;
typedef  TYPE_7__ HPDF_CID_Width ;
typedef  TYPE_8__* HPDF_CIDFontDefAttr ;
typedef  TYPE_3__* HPDF_Array ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*,TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*,scalar_t__) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_3__*,char*,TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,char*,char*) ; 
 scalar_t__ FUNC6 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_12__*,scalar_t__) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static HPDF_Font
FUNC12 (HPDF_Font parent, HPDF_Xref xref)
{
    HPDF_STATUS ret = HPDF_OK;
    HPDF_FontAttr attr = (HPDF_FontAttr)parent->attr;
    HPDF_FontDef fontdef = attr->fontdef;
    HPDF_CIDFontDefAttr fontdef_attr = (HPDF_CIDFontDefAttr)fontdef->attr;
    HPDF_Encoder encoder = attr->encoder;
    HPDF_CMapEncoderAttr encoder_attr =
                (HPDF_CMapEncoderAttr)encoder->attr;

    HPDF_UINT16 save_cid = 0;
    HPDF_Font font;
    HPDF_Array array;
    HPDF_Array sub_array = NULL;
    HPDF_UINT i;

    HPDF_Dict descriptor;
    HPDF_Dict cid_system_info;

    FUNC9 ((" HPDF_CIDFontType0_New\n"));

    font = FUNC7 (parent->mmgr);
    if (!font)
        return NULL;

    if (FUNC11 (xref, font) != HPDF_OK)
        return NULL;

    ret += FUNC5 (font, "Type", "Font");
    ret += FUNC5 (font, "Subtype", "CIDFontType0");
    ret += FUNC6 (font, "DW", fontdef_attr->DW);
    ret += FUNC5 (font, "BaseFont", fontdef->base_font);
    if (ret != HPDF_OK)
        return NULL;

    /* add 'DW2' element */
    array = FUNC2 (parent->mmgr);
    if (!array)
        return NULL;

    if (FUNC4 (font, "DW2", array) != HPDF_OK)
        return NULL;

    ret += FUNC1 (array, fontdef_attr->DW2[0]);
    ret += FUNC1 (array, fontdef_attr->DW2[1]);

    if (ret != HPDF_OK)
        return NULL;

    /* add 'W' element */
    array = FUNC2 (parent->mmgr);
    if (!array)
        return NULL;

    if (FUNC4 (font, "W", array) != HPDF_OK)
        return NULL;

    /* Create W array. */
    for (i = 0; i< fontdef_attr->widths->count; i++) {
        HPDF_CID_Width *w =
                (HPDF_CID_Width *)FUNC8 (fontdef_attr->widths, i);

        if (w->cid != save_cid + 1 || !sub_array) {
            sub_array = FUNC2 (parent->mmgr);
            if (!sub_array)
                return NULL;

            ret += FUNC1 (array, w->cid);
            ret += FUNC0 (array, sub_array);
        }

        ret += FUNC1 (sub_array, w->width);
        save_cid = w->cid;

        if (ret != HPDF_OK)
            return NULL;
    }

    /* create descriptor */
    descriptor = FUNC7 (parent->mmgr);
    if (!descriptor)
        return NULL;

    if (FUNC11 (xref, descriptor) != HPDF_OK)
        return NULL;

    if (FUNC4 (font, "FontDescriptor", descriptor) != HPDF_OK)
        return NULL;

    ret += FUNC5 (descriptor, "Type", "FontDescriptor");
    ret += FUNC5 (descriptor, "FontName", fontdef->base_font);
    ret += FUNC6 (descriptor, "Ascent", fontdef->ascent);
    ret += FUNC6 (descriptor, "Descent", fontdef->descent);
    ret += FUNC6 (descriptor, "CapHeight",
                fontdef->cap_height);
    ret += FUNC6 (descriptor, "MissingWidth",
                fontdef->missing_width);
    ret += FUNC6 (descriptor, "Flags", fontdef->flags);

    if (ret != HPDF_OK)
        return NULL;

    array = FUNC3 (parent->mmgr, fontdef->font_bbox);
    if (!array)
        return NULL;

    ret += FUNC4 (descriptor, "FontBBox", array);
    ret += FUNC6 (descriptor, "ItalicAngle",
            fontdef->italic_angle);
    ret += FUNC6 (descriptor, "StemV", fontdef->stemv);

    if (ret != HPDF_OK)
        return NULL;

    /* create CIDSystemInfo dictionary */
    cid_system_info = FUNC7 (parent->mmgr);
    if (!cid_system_info)
        return NULL;

    if (FUNC4 (font, "CIDSystemInfo", cid_system_info) != HPDF_OK)
        return NULL;

    ret += FUNC4 (cid_system_info, "Registry",
            FUNC10 (parent->mmgr, encoder_attr->registry, NULL));
    ret += FUNC4 (cid_system_info, "Ordering",
            FUNC10 (parent->mmgr, encoder_attr->ordering, NULL));
    ret += FUNC6 (cid_system_info, "Supplement",
            encoder_attr->suppliment);

    if (ret != HPDF_OK)
        return NULL;

    return font;
}