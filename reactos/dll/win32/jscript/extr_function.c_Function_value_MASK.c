#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  jsdisp; } ;
struct TYPE_11__ {TYPE_1__ u; } ;
typedef  TYPE_3__ vdisp_t ;
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_12__ {TYPE_2__* vtbl; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* call ) (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_4__ FunctionInstance ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  JSCLASS_FUNCTION ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

HRESULT FUNC5(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    FunctionInstance *function;

    FUNC1("\n");

    if(!FUNC3(jsthis, JSCLASS_FUNCTION)) {
        FUNC0("dispex is not a function\n");
        return E_FAIL;
    }

    function = FUNC2(jsthis->u.jsdisp);
    return function->vtbl->call(ctx, function, NULL, flags, argc, argv, r);
}