#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
struct TYPE_6__ {TYPE_1__* vtbl; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* toString ) (TYPE_2__*,int /*<<< orphan*/ **) ;} ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_2__ FunctionInstance ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ **) ; 

HRESULT FUNC5(script_ctx_t *ctx, jsdisp_t *jsthis, jsval_t *r)
{
    FunctionInstance *function = FUNC2(jsthis);
    jsstr_t *str;
    HRESULT hres;

    FUNC1("\n");

    hres = function->vtbl->toString(function, &str);
    if(FUNC0(hres))
        return hres;

    *r = FUNC3(str);
    return S_OK;
}