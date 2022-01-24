#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  top; int /*<<< orphan*/  right; int /*<<< orphan*/  bottom; int /*<<< orphan*/  left; } ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  int /*<<< orphan*/  HPDF_MMgr ;
typedef  TYPE_1__ HPDF_Box ;
typedef  int /*<<< orphan*/ * HPDF_Array ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

HPDF_Array
FUNC5  (HPDF_MMgr  mmgr,
                     HPDF_Box   box)
{
    HPDF_Array  obj;
    HPDF_STATUS ret = HPDF_OK;

    FUNC3((" HPDF_Box_Array_New\n"));

    obj = FUNC2 (mmgr);
    if (!obj)
        return NULL;

    ret += FUNC0 (obj, FUNC4 (mmgr, box.left));
    ret += FUNC0 (obj, FUNC4 (mmgr, box.bottom));
    ret += FUNC0 (obj, FUNC4 (mmgr, box.right));
    ret += FUNC0 (obj, FUNC4 (mmgr, box.top));

    if (ret != HPDF_OK) {
        FUNC1 (obj);
        return NULL;
    }

    return obj;
}