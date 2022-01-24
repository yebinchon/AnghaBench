#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int** cid_map; int /*<<< orphan*/  cmap_range; } ;
struct TYPE_12__ {int from; int to; int cid; } ;
struct TYPE_11__ {scalar_t__ to_unicode_fn; int /*<<< orphan*/  mmgr; TYPE_1__* error; int /*<<< orphan*/  attr; } ;
struct TYPE_10__ {int /*<<< orphan*/  error_no; } ;
typedef  int HPDF_UINT16 ;
typedef  int /*<<< orphan*/  HPDF_STATUS ;
typedef  TYPE_2__* HPDF_Encoder ;
typedef  TYPE_3__ HPDF_CidRange_Rec ;
typedef  TYPE_4__* HPDF_CMapEncoderAttr ;
typedef  size_t HPDF_BYTE ;

/* Variables and functions */
 scalar_t__ HPDF_CMapEncoder_ToUnicode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  HPDF_OK ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

HPDF_STATUS
FUNC4  (HPDF_Encoder             encoder,
                           const HPDF_CidRange_Rec  *range)
{
    HPDF_CMapEncoderAttr attr = (HPDF_CMapEncoderAttr)encoder->attr;

    FUNC3 ((" HPDF_CMapEncoder_AddCMap\n"));

    /* Copy specified pdf_cid_range array to fRangeArray. */
    while (range->from != 0xffff || range->to != 0xffff) {
	HPDF_CidRange_Rec *prange;
	HPDF_STATUS ret;

	/*
	 * Only if we have the default to_unicode_fn
	 */
	if (encoder->to_unicode_fn == HPDF_CMapEncoder_ToUnicode) {
	    HPDF_UINT16 code = range->from;
	    HPDF_UINT16 cid = range->cid;

	    while (code <= range->to) {
		HPDF_BYTE l = code;
		HPDF_BYTE h = code >> 8;

		attr->cid_map[l][h] = cid;
		code++;
		cid++;
	    }
	}

        prange = FUNC1 (encoder->mmgr, sizeof(HPDF_CidRange_Rec));
        if (!prange)
            return encoder->error->error_no;

        prange->from = range->from;
        prange->to = range->to;
        prange->cid = range->cid;

        if ((ret = FUNC2 (attr->cmap_range, prange)) != HPDF_OK) {
            FUNC0 (encoder->mmgr, prange);
            return ret;
        }

        range++;
    }

    return HPDF_OK;
}