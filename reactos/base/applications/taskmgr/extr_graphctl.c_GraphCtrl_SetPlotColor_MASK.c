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
struct TYPE_4__ {int /*<<< orphan*/ * m_crPlotColor; int /*<<< orphan*/ * m_penPlot; } ;
typedef  TYPE_1__ TGraphCtrl ;
typedef  int /*<<< orphan*/  COLORREF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PS_SOLID ; 

void FUNC3(TGraphCtrl* this, int plot, COLORREF color)
{
    this->m_crPlotColor[plot] = color;
    FUNC1(this->m_penPlot[plot]);
    this->m_penPlot[plot] = FUNC0(PS_SOLID, 0, this->m_crPlotColor[plot]);
    /*  clear out the existing garbage, re-start with a clean plot */
    FUNC2(this, FALSE);
}