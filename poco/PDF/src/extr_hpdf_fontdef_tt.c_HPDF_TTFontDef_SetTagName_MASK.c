#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ base_font; int /*<<< orphan*/  attr; } ;
struct TYPE_4__ {char* tag_name; int* tag_name2; scalar_t__ base_font; } ;
typedef  size_t HPDF_UINT ;
typedef  TYPE_1__* HPDF_TTFontDefAttr ;
typedef  TYPE_2__* HPDF_FontDef ;
typedef  int /*<<< orphan*/  HPDF_BYTE ;

/* Variables and functions */
 int HPDF_LIMIT_MAX_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 size_t FUNC3 (char*,int) ; 
 size_t HPDF_TTF_FONT_TAG_LEN ; 

void
FUNC4  (HPDF_FontDef   fontdef,
                            char     *tag)
{
    HPDF_TTFontDefAttr attr = (HPDF_TTFontDefAttr)fontdef->attr;
    char buf[HPDF_LIMIT_MAX_NAME_LEN + 1];
    HPDF_UINT i;

    FUNC2 ((" HPDF_TTFontDef_SetTagName\n"));

    if (FUNC3 (tag, HPDF_LIMIT_MAX_NAME_LEN) != HPDF_TTF_FONT_TAG_LEN)
        return;

    FUNC0 ((HPDF_BYTE *)attr->tag_name, (HPDF_BYTE *)tag, HPDF_TTF_FONT_TAG_LEN);
    attr->tag_name[HPDF_TTF_FONT_TAG_LEN] = '+';

    for (i = 0; i < HPDF_TTF_FONT_TAG_LEN + 1; i++) {
        attr->tag_name2[i * 2] = 0x00;
        attr->tag_name2[i * 2 + 1] = attr->tag_name[i];
    }

    FUNC1 (buf, 0, HPDF_LIMIT_MAX_NAME_LEN + 1);
    FUNC0 ((HPDF_BYTE *)buf, (HPDF_BYTE *)attr->tag_name, HPDF_TTF_FONT_TAG_LEN + 1);
    FUNC0 ((HPDF_BYTE *)buf + HPDF_TTF_FONT_TAG_LEN + 1, (HPDF_BYTE *)fontdef->base_font, HPDF_LIMIT_MAX_NAME_LEN - HPDF_TTF_FONT_TAG_LEN - 1);

    FUNC0 ((HPDF_BYTE *)attr->base_font, (HPDF_BYTE *)buf, HPDF_LIMIT_MAX_NAME_LEN + 1);
}