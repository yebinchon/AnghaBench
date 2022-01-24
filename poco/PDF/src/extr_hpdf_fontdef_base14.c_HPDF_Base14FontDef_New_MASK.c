#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  cap_height; int /*<<< orphan*/  x_height; int /*<<< orphan*/  descent; int /*<<< orphan*/  ascent; int /*<<< orphan*/  bbox; int /*<<< orphan*/  widths_table; scalar_t__ is_font_specific; int /*<<< orphan*/  font_name; } ;
struct TYPE_14__ {char* base_font; void* valid; int /*<<< orphan*/  cap_height; int /*<<< orphan*/  x_height; int /*<<< orphan*/  descent; int /*<<< orphan*/  ascent; int /*<<< orphan*/  font_bbox; scalar_t__ attr; } ;
struct TYPE_13__ {int /*<<< orphan*/  error; } ;
struct TYPE_12__ {char* encoding_scheme; void* is_base14font; } ;
typedef  TYPE_1__* HPDF_Type1FontDefAttr ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_2__* HPDF_MMgr ;
typedef  TYPE_3__* HPDF_FontDef ;
typedef  TYPE_4__ HPDF_Base14FontDefData ;

/* Variables and functions */
 TYPE_4__* FUNC0 (char const*) ; 
 int /*<<< orphan*/  HPDF_ENCODING_FONT_SPECIFIC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  HPDF_INVALID_FONT_NAME ; 
 int HPDF_LIMIT_MAX_NAME_LEN ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 void* HPDF_TRUE ; 
 TYPE_3__* FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 

HPDF_FontDef
FUNC6  (HPDF_MMgr        mmgr,
                         const char  *font_name)
{
    HPDF_FontDef                   fontdef;
    HPDF_STATUS                    ret;
    const HPDF_Base14FontDefData   *data;
    char                      *eptr;
    HPDF_Type1FontDefAttr          attr;

    fontdef = FUNC4 (mmgr);
    if (!fontdef)
        return NULL;

    data = FUNC0 (font_name);

    if (!data->font_name) {
        FUNC2 (mmgr->error, HPDF_INVALID_FONT_NAME, 0);
        FUNC1 (fontdef);
        return NULL;
    }

    eptr = fontdef->base_font + HPDF_LIMIT_MAX_NAME_LEN;
    FUNC3 (fontdef->base_font, data->font_name, eptr);

    attr = (HPDF_Type1FontDefAttr)fontdef->attr;
    attr->is_base14font = HPDF_TRUE;

    if (data->is_font_specific)
        FUNC3 (attr->encoding_scheme, HPDF_ENCODING_FONT_SPECIFIC,
                attr->encoding_scheme + HPDF_LIMIT_MAX_NAME_LEN);

    ret = FUNC5 (fontdef, data->widths_table);

    if (ret != HPDF_OK) {
        FUNC1 (fontdef);
        return NULL;
    }

    fontdef->font_bbox = data->bbox;
    fontdef->ascent = data->ascent;
    fontdef->descent = data->descent;
    fontdef->x_height = data->x_height;
    fontdef->cap_height = data->cap_height;

    fontdef->valid = HPDF_TRUE;

    return fontdef;
}