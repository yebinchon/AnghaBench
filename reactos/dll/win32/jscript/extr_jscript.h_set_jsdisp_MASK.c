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
struct TYPE_4__ {int /*<<< orphan*/  disp; int /*<<< orphan*/ * jsdisp; } ;
struct TYPE_5__ {int flags; TYPE_1__ u; } ;
typedef  TYPE_2__ vdisp_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int VDISP_DISPEX ; 
 int VDISP_JSDISP ; 

__attribute__((used)) static inline void FUNC1(vdisp_t *vdisp, jsdisp_t *jsdisp)
{
    vdisp->u.jsdisp = jsdisp;
    vdisp->flags = VDISP_JSDISP | VDISP_DISPEX;
    FUNC0(vdisp->u.disp);
}