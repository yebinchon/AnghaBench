#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  obj_class; } ;
struct TYPE_13__ {TYPE_1__ header; } ;
struct TYPE_12__ {int /*<<< orphan*/  error; } ;
typedef  int /*<<< orphan*/  HPDF_Xref ;
typedef  int /*<<< orphan*/  HPDF_Page ;
typedef  TYPE_2__* HPDF_MMgr ;
typedef  size_t HPDF_INT ;
typedef  TYPE_3__* HPDF_Destination ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/ * HPDF_DESTINATION_TYPE_NAMES ; 
 scalar_t__ HPDF_FIT ; 
 int /*<<< orphan*/  HPDF_INVALID_PAGE ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  HPDF_OSUBCLASS_DESTINATION ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_3__*) ; 

HPDF_Destination
FUNC7  (HPDF_MMgr   mmgr,
                       HPDF_Page   target,
                       HPDF_Xref   xref)
{
    HPDF_Destination dst;

    FUNC3((" HPDF_Destination_New\n"));

    if (!FUNC4 (target)) {
        FUNC5 (mmgr->error, HPDF_INVALID_PAGE, 0);
        return NULL;
    }

    dst = FUNC2 (mmgr);
    if (!dst)
        return NULL;

    dst->header.obj_class |= HPDF_OSUBCLASS_DESTINATION;

    if (FUNC6 (xref, dst) != HPDF_OK)
        return NULL;

    /* first item of array must be target page */
    if (FUNC0 (dst, target) != HPDF_OK)
        return NULL;

    /* default type is HPDF_FIT */
    if (FUNC1 (dst,
            HPDF_DESTINATION_TYPE_NAMES[(HPDF_INT)HPDF_FIT]) != HPDF_OK)
        return NULL;

    return dst;
}