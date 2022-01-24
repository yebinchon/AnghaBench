#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ count; } ;
struct TYPE_7__ {TYPE_3__* code_space_range; TYPE_3__* notdef_range; TYPE_3__* cmap_range; } ;
struct TYPE_6__ {int /*<<< orphan*/ * attr; int /*<<< orphan*/  mmgr; } ;
typedef  scalar_t__ HPDF_UINT ;
typedef  TYPE_1__* HPDF_Encoder ;
typedef  int /*<<< orphan*/  HPDF_CidRange_Rec ;
typedef  TYPE_2__* HPDF_CMapEncoderAttr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4  (HPDF_Encoder  encoder)
{
    HPDF_CMapEncoderAttr attr;
    HPDF_UINT i;
    HPDF_CidRange_Rec *data;

    FUNC3 ((" HPDF_CMapEncoder_Free\n"));

    attr = (HPDF_CMapEncoderAttr)encoder->attr;

    if (attr && attr->cmap_range) {
        for (i = 0; i < attr->cmap_range->count; i++) {
            data = FUNC2 (attr->cmap_range, i);

            FUNC0 (encoder->mmgr, data);
        }

        FUNC1 (attr->cmap_range);
    }

    if (attr && attr->notdef_range) {
        for (i = 0; i < attr->notdef_range->count; i++) {
            data = FUNC2 (attr->notdef_range, i);

            FUNC0 (encoder->mmgr, data);
        }

        FUNC1 (attr->notdef_range);
    }

    if (attr && attr->code_space_range) {
        for (i = 0; i < attr->code_space_range->count; i++) {
            data = FUNC2 (attr->code_space_range, i);

            FUNC0 (encoder->mmgr, data);
        }

        FUNC1 (attr->code_space_range);
    }

    FUNC0 (encoder->mmgr, encoder->attr);
    encoder->attr = NULL;
}