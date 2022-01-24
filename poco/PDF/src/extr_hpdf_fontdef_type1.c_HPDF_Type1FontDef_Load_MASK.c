#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  HPDF_Stream ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  int /*<<< orphan*/  HPDF_MMgr ;
typedef  int /*<<< orphan*/ * HPDF_FontDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

HPDF_FontDef
FUNC5  (HPDF_MMgr         mmgr,
                         HPDF_Stream       afm,
                         HPDF_Stream       font_data)
{
    HPDF_FontDef fontdef;
    HPDF_STATUS ret;

    FUNC1 ((" HPDF_Type1FontDef_Load\n"));

    if (!afm)
        return NULL;

    fontdef = FUNC2 (mmgr);

    if (!fontdef)
        return NULL;

    ret = FUNC3 (fontdef, afm);
    if (ret != HPDF_OK) {
        FUNC0 (fontdef);
        return NULL;
    }

    /* if font-data is specified, the font data is embeded */
    if (font_data) {
        ret = FUNC4 (fontdef, font_data);
        if (ret != HPDF_OK) {
            FUNC0 (fontdef);
            return NULL;
        }
    }

    return fontdef;
}