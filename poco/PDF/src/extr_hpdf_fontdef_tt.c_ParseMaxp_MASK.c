#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  error; int /*<<< orphan*/  attr; } ;
struct TYPE_8__ {scalar_t__ offset; } ;
struct TYPE_7__ {int /*<<< orphan*/  num_glyphs; int /*<<< orphan*/  stream; } ;
typedef  TYPE_1__* HPDF_TTFontDefAttr ;
typedef  TYPE_2__ HPDF_TTFTable ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_3__* HPDF_FontDef ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  HPDF_SEEK_SET ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_TTF_MISSING_TABLE ; 

__attribute__((used)) static HPDF_STATUS
FUNC5 (HPDF_FontDef  fontdef)
{
    HPDF_TTFontDefAttr attr = (HPDF_TTFontDefAttr)fontdef->attr;
    HPDF_TTFTable *tbl = FUNC0 (fontdef, "maxp");
    HPDF_STATUS ret;

    FUNC2 ((" HPDF_TTFontDef_ParseMaxp\n"));

    if (!tbl)
        return FUNC3 (fontdef->error, HPDF_TTF_MISSING_TABLE, 9);

    ret = FUNC4 (attr->stream, tbl->offset + 4, HPDF_SEEK_SET);
    if (ret != HPDF_OK)
        return ret;

    ret = FUNC1 (attr->stream, &attr->num_glyphs);

    FUNC2((" HPDF_TTFontDef_ParseMaxp num_glyphs=%u\n",
            attr->num_glyphs));

    return ret;
}