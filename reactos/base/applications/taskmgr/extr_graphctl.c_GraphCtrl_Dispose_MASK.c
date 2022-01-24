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
struct TYPE_3__ {int /*<<< orphan*/ * m_brushBack; int /*<<< orphan*/ * m_dcPlot; int /*<<< orphan*/ * m_dcGrid; int /*<<< orphan*/ * m_bitmapPlot; int /*<<< orphan*/ * m_bitmapGrid; int /*<<< orphan*/ * m_bitmapOldPlot; int /*<<< orphan*/ * m_bitmapOldGrid; int /*<<< orphan*/ ** m_penPlot; } ;
typedef  TYPE_1__ TGraphCtrl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int MAX_PLOTS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(TGraphCtrl* this)
{
    int plot;

    for (plot = 0; plot < MAX_PLOTS; plot++)
        FUNC1(this->m_penPlot[plot]);

    /*  just to be picky restore the bitmaps for the two memory dc's */
    /*  (these dc's are being destroyed so there shouldn't be any leaks) */

    if (this->m_bitmapOldGrid != NULL) FUNC2(this->m_dcGrid, this->m_bitmapOldGrid);
    if (this->m_bitmapOldPlot != NULL) FUNC2(this->m_dcPlot, this->m_bitmapOldPlot);
    if (this->m_bitmapGrid    != NULL) FUNC1(this->m_bitmapGrid);
    if (this->m_bitmapPlot    != NULL) FUNC1(this->m_bitmapPlot);
    if (this->m_dcGrid        != NULL) FUNC0(this->m_dcGrid);
    if (this->m_dcPlot        != NULL) FUNC0(this->m_dcPlot);
    if (this->m_brushBack     != NULL) FUNC1(this->m_brushBack);
}