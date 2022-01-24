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
struct TYPE_5__ {int /*<<< orphan*/  notdef_range; } ;
struct TYPE_4__ {int /*<<< orphan*/  mmgr; int /*<<< orphan*/  attr; } ;
typedef  int /*<<< orphan*/  HPDF_STATUS ;
typedef  TYPE_1__* HPDF_Encoder ;
typedef  int /*<<< orphan*/  HPDF_CidRange_Rec ;
typedef  TYPE_2__* HPDF_CMapEncoderAttr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

HPDF_STATUS
FUNC2  (HPDF_Encoder        encoder,
                                  HPDF_CidRange_Rec   range)
{
    HPDF_CMapEncoderAttr attr = (HPDF_CMapEncoderAttr)encoder->attr;

    FUNC1 ((" HPDF_CMapEncoder_AddNotDefRange\n"));

    return FUNC0 (encoder->mmgr, range, attr->notdef_range);
}