#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  error; int /*<<< orphan*/  attr; } ;
struct TYPE_13__ {int /*<<< orphan*/  size; } ;
struct TYPE_11__ {int /*<<< orphan*/  glyph_data_format; int /*<<< orphan*/  index_to_loc_format; int /*<<< orphan*/  font_direction_hint; int /*<<< orphan*/  lowest_rec_ppem; int /*<<< orphan*/  mac_style; int /*<<< orphan*/  y_max; int /*<<< orphan*/  x_max; int /*<<< orphan*/  y_min; int /*<<< orphan*/  x_min; int /*<<< orphan*/  modified; int /*<<< orphan*/  created; int /*<<< orphan*/  units_per_em; int /*<<< orphan*/  flags; int /*<<< orphan*/  magic_number; int /*<<< orphan*/  font_revision; int /*<<< orphan*/  version_number; } ;
struct TYPE_12__ {TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  HPDF_UINT32 ;
typedef  TYPE_2__* HPDF_TTFontDefAttr ;
typedef  TYPE_3__* HPDF_Stream ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_4__* HPDF_FontDef ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HPDF_STATUS
FUNC6 (HPDF_FontDef   fontdef,
             HPDF_Stream    stream,
             HPDF_UINT32   *check_sum_ptr)
{
    HPDF_TTFontDefAttr attr = (HPDF_TTFontDefAttr)fontdef->attr;
    HPDF_STATUS ret = HPDF_OK;

    FUNC1 ((" WriteHeader\n"));

    ret += FUNC2 (stream, attr->header.version_number, 4);
    ret += FUNC5 (stream, attr->header.font_revision);

    /* save the address of checkSumAdjustment.
     * the value is rewrite to computed value after new check-sum-value is
     * generated.
     */
    *check_sum_ptr = stream->size;

    ret += FUNC5 (stream, 0);
    ret += FUNC5 (stream, attr->header.magic_number);
    ret += FUNC4 (stream, attr->header.flags);
    ret += FUNC4 (stream, attr->header.units_per_em);
    ret += FUNC2 (stream, attr->header.created, 8);
    ret += FUNC2 (stream, attr->header.modified, 8);
    ret += FUNC3 (stream, attr->header.x_min);
    ret += FUNC3 (stream, attr->header.y_min);
    ret += FUNC3 (stream, attr->header.x_max);
    ret += FUNC3 (stream, attr->header.y_max);
    ret += FUNC4 (stream, attr->header.mac_style);
    ret += FUNC4 (stream, attr->header.lowest_rec_ppem);
    ret += FUNC3 (stream, attr->header.font_direction_hint);
    ret += FUNC3 (stream, attr->header.index_to_loc_format);
    ret += FUNC3 (stream, attr->header.glyph_data_format);

    if (ret != HPDF_OK)
        return FUNC0 (fontdef->error);

    return HPDF_OK;
}