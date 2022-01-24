#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int /*<<< orphan*/  error; int /*<<< orphan*/  mmgr; int /*<<< orphan*/  filter; int /*<<< orphan*/  stream; int /*<<< orphan*/  attr; } ;
struct TYPE_22__ {TYPE_4__* fontdef; TYPE_6__* descendant_font; int /*<<< orphan*/  xref; TYPE_2__* cmap_stream; TYPE_1__* map_stream; } ;
struct TYPE_21__ {TYPE_6__* descriptor; int /*<<< orphan*/  x_height; int /*<<< orphan*/  stemv; int /*<<< orphan*/  italic_angle; int /*<<< orphan*/  font_bbox; int /*<<< orphan*/  flags; int /*<<< orphan*/  descent; int /*<<< orphan*/  ascent; int /*<<< orphan*/  attr; } ;
struct TYPE_20__ {char* base_font; int /*<<< orphan*/  length1; scalar_t__ embedding; } ;
struct TYPE_19__ {int /*<<< orphan*/  filter; } ;
struct TYPE_18__ {int /*<<< orphan*/  filter; } ;
typedef  TYPE_3__* HPDF_TTFontDefAttr ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_4__* HPDF_FontDef ;
typedef  TYPE_5__* HPDF_FontAttr ;
typedef  TYPE_6__* HPDF_Dict ;
typedef  TYPE_6__* HPDF_Array ;

/* Variables and functions */
 TYPE_6__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_6__*,char*,TYPE_6__*) ; 
 scalar_t__ FUNC3 (TYPE_6__*,char*,char*) ; 
 scalar_t__ FUNC4 (TYPE_6__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_6__*) ; 

__attribute__((used)) static HPDF_STATUS
FUNC10  (HPDF_Dict obj)
{
    HPDF_FontAttr font_attr = (HPDF_FontAttr)obj->attr;
    HPDF_FontDef def = font_attr->fontdef;
    HPDF_TTFontDefAttr def_attr = (HPDF_TTFontDefAttr)def->attr;
    HPDF_STATUS ret = 0;

    FUNC7 ((" CIDFontType2_BeforeWrite_Func\n"));

    if (font_attr->map_stream)
        font_attr->map_stream->filter = obj->filter;

    if (font_attr->cmap_stream)
        font_attr->cmap_stream->filter = obj->filter;

    if (!font_attr->fontdef->descriptor) {
        HPDF_Dict descriptor = FUNC5 (obj->mmgr);
        HPDF_Array array;

        if (!descriptor)
            return FUNC6 (obj->error);

        if (def_attr->embedding) {
            HPDF_Dict font_data = FUNC1 (obj->mmgr,
                    font_attr->xref);

            if (!font_data)
                return FUNC6 (obj->error);

            if (FUNC8 (font_attr->fontdef,
                font_data->stream) != HPDF_OK)
                return FUNC6 (obj->error);

            ret += FUNC2 (descriptor, "FontFile2", font_data);
            ret += FUNC4 (font_data, "Length1",
                    def_attr->length1);
            ret += FUNC4 (font_data, "Length2", 0);
            ret += FUNC4 (font_data, "Length3", 0);

            font_data->filter = obj->filter;

            if (ret != HPDF_OK)
                return FUNC6 (obj->error);
        }

        ret += FUNC9 (font_attr->xref, descriptor);
        ret += FUNC3 (descriptor, "Type", "FontDescriptor");
        ret += FUNC4 (descriptor, "Ascent", def->ascent);
        ret += FUNC4 (descriptor, "Descent", def->descent);
        ret += FUNC4 (descriptor, "Flags", def->flags);

        array = FUNC0 (obj->mmgr, def->font_bbox);
        ret += FUNC2 (descriptor, "FontBBox", array);

        ret += FUNC3 (descriptor, "FontName", def_attr->base_font);
        ret += FUNC4 (descriptor, "ItalicAngle",
                def->italic_angle);
        ret += FUNC4 (descriptor, "StemV", def->stemv);
        ret += FUNC4 (descriptor, "XHeight", def->x_height);

        if (ret != HPDF_OK)
            return FUNC6 (obj->error);

        font_attr->fontdef->descriptor = descriptor;
    }

    if ((ret = FUNC3 (obj, "BaseFont",
                def_attr->base_font)) != HPDF_OK)
        return ret;

    if ((ret = FUNC3 (font_attr->descendant_font, "BaseFont",
                def_attr->base_font)) != HPDF_OK)
        return ret;

    return FUNC2 (font_attr->descendant_font, "FontDescriptor",
                font_attr->fontdef->descriptor);
}