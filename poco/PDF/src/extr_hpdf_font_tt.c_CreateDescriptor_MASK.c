#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  error; int /*<<< orphan*/  filter; int /*<<< orphan*/  stream; int /*<<< orphan*/  mmgr; int /*<<< orphan*/  attr; } ;
struct TYPE_19__ {TYPE_2__* fontdef; int /*<<< orphan*/  xref; } ;
struct TYPE_18__ {TYPE_4__* descriptor; int /*<<< orphan*/  x_height; int /*<<< orphan*/  stemv; int /*<<< orphan*/  italic_angle; int /*<<< orphan*/  font_bbox; int /*<<< orphan*/  flags; int /*<<< orphan*/  cap_height; int /*<<< orphan*/  descent; int /*<<< orphan*/  ascent; int /*<<< orphan*/  attr; } ;
struct TYPE_17__ {char* base_font; char* char_set; int /*<<< orphan*/  length1; scalar_t__ embedding; } ;
typedef  TYPE_1__* HPDF_TTFontDefAttr ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_2__* HPDF_FontDef ;
typedef  TYPE_3__* HPDF_FontAttr ;
typedef  TYPE_4__* HPDF_Font ;
typedef  TYPE_4__* HPDF_Dict ;
typedef  TYPE_4__* HPDF_Array ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_4__*,char*,TYPE_4__*) ; 
 scalar_t__ FUNC3 (TYPE_4__*,char*,char*) ; 
 scalar_t__ FUNC4 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_4__*) ; 

__attribute__((used)) static HPDF_STATUS
FUNC10  (HPDF_Font  font)
{
    HPDF_FontAttr font_attr = (HPDF_FontAttr)font->attr;
    HPDF_FontDef def = font_attr->fontdef;
    HPDF_TTFontDefAttr def_attr = (HPDF_TTFontDefAttr)def->attr;

    FUNC7 ((" HPDF_TTFont_CreateDescriptor\n"));

    if (!font_attr->fontdef->descriptor) {
        HPDF_Dict descriptor = FUNC5 (font->mmgr);
        HPDF_STATUS ret = 0;
        HPDF_Array array;

        if (!descriptor)
            return FUNC6 (font->error);

        ret += FUNC9 (font_attr->xref, descriptor);
        ret += FUNC3 (descriptor, "Type", "FontDescriptor");
        ret += FUNC4 (descriptor, "Ascent", def->ascent);
        ret += FUNC4 (descriptor, "Descent", def->descent);
        ret += FUNC4 (descriptor, "CapHeight", def->cap_height);
        ret += FUNC4 (descriptor, "Flags", def->flags);

        array = FUNC0 (font->mmgr, def->font_bbox);
        ret += FUNC2 (descriptor, "FontBBox", array);

        ret += FUNC3 (descriptor, "FontName", def_attr->base_font);
        ret += FUNC4 (descriptor, "ItalicAngle",
                def->italic_angle);
        ret += FUNC4 (descriptor, "StemV", def->stemv);
        ret += FUNC4 (descriptor, "XHeight", def->x_height);

        if (def_attr->char_set)
            ret += FUNC3 (descriptor, "CharSet",
                        def_attr->char_set);

        if (ret != HPDF_OK)
            return FUNC6 (font->error);

        if (def_attr->embedding) {
            HPDF_Dict font_data = FUNC1 (font->mmgr,
                    font_attr->xref);

            if (!font_data)
                return FUNC6 (font->error);

            if (FUNC8 (font_attr->fontdef,
                font_data->stream) != HPDF_OK)
                return FUNC6 (font->error);

            ret += FUNC2 (descriptor, "FontFile2", font_data);
            ret += FUNC4 (font_data, "Length1",
                    def_attr->length1);
            ret += FUNC4 (font_data, "Length2", 0);
            ret += FUNC4 (font_data, "Length3", 0);

            font_data->filter = font->filter;
        }

        if (ret != HPDF_OK)
            return FUNC6 (font->error);

        font_attr->fontdef->descriptor = descriptor;
    }

    return FUNC2 (font, "FontDescriptor",
                font_attr->fontdef->descriptor);
}