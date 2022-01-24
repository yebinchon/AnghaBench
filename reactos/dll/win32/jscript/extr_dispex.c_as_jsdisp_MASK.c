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
typedef  int /*<<< orphan*/  jsdisp_t ;
struct TYPE_3__ {int /*<<< orphan*/ * lpVtbl; } ;
typedef  int /*<<< orphan*/  IDispatchVtbl ;
typedef  int /*<<< orphan*/  IDispatchEx ;
typedef  TYPE_1__ IDispatch ;

/* Variables and functions */
 int /*<<< orphan*/  DispatchExVtbl ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 

jsdisp_t *FUNC2(IDispatch *disp)
{
    FUNC0(disp->lpVtbl == (IDispatchVtbl*)&DispatchExVtbl);
    return FUNC1((IDispatchEx*)disp);
}