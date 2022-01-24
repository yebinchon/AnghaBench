#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int ascent; int descent; int cap_height; int stemv; int /*<<< orphan*/  valid; int /*<<< orphan*/  type; scalar_t__ italic_angle; scalar_t__ flags; int /*<<< orphan*/  font_bbox; } ;
typedef  int /*<<< orphan*/  HPDF_STATUS ;
typedef  TYPE_1__* HPDF_FontDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_FONTDEF_TYPE_CID ; 
 scalar_t__ HPDF_FONT_FIXED_WIDTH ; 
 scalar_t__ HPDF_FONT_SYMBOLIC ; 
 int /*<<< orphan*/  HPDF_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  HPDF_TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  MS_Gothic_W_ARRAY ; 

__attribute__((used)) static HPDF_STATUS
FUNC3  (HPDF_FontDef   fontdef)
{
    HPDF_STATUS ret;

    FUNC1 ((" HPDF_FontDef_MS_Gothic_Init\n"));

    fontdef->ascent = 859;
    fontdef->descent = -140;
    fontdef->cap_height = 769;
    fontdef->font_bbox = FUNC2(-0, -136, 1000, 859);
    fontdef->flags = HPDF_FONT_SYMBOLIC + HPDF_FONT_FIXED_WIDTH;
    fontdef->italic_angle = 0;
    fontdef->stemv = 78;
    if ((ret = FUNC0 (fontdef, MS_Gothic_W_ARRAY)) !=
                HPDF_OK) {
        return ret;
    }

    fontdef->type = HPDF_FONTDEF_TYPE_CID;
    fontdef->valid = HPDF_TRUE;

    return HPDF_OK;
}