#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  dispex_prop_t ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DISPID ;

/* Variables and functions */
 int /*<<< orphan*/  DISP_E_MEMBERNOTFOUND ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

HRESULT FUNC2(jsdisp_t *jsdisp, DISPID id, jsval_t *val)
{
    dispex_prop_t *prop;

    prop = FUNC0(jsdisp, id);
    if(!prop)
        return DISP_E_MEMBERNOTFOUND;

    return FUNC1(jsdisp, prop, val);
}