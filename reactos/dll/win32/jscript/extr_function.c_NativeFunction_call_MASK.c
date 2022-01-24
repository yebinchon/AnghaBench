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
typedef  int /*<<< orphan*/  vdisp_t ;
struct TYPE_5__ {int /*<<< orphan*/  global; int /*<<< orphan*/ * host_global; } ;
typedef  TYPE_1__ script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* proc ) (TYPE_1__*,int /*<<< orphan*/ *,unsigned int,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ NativeFunction ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  FunctionInstance ;

/* Variables and functions */
 unsigned int DISPATCH_JSCRIPT_INTERNAL_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,unsigned int,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC4(script_ctx_t *ctx, FunctionInstance *func, IDispatch *this_disp, unsigned flags,
        unsigned argc, jsval_t *argv, jsval_t *r)
{
    NativeFunction *function = (NativeFunction*)func;
    vdisp_t vthis;
    HRESULT hres;

    if(this_disp)
        FUNC0(&vthis, this_disp);
    else if(ctx->host_global)
        FUNC0(&vthis, ctx->host_global);
    else
        FUNC1(&vthis, ctx->global);

    hres = function->proc(ctx, &vthis, flags & ~DISPATCH_JSCRIPT_INTERNAL_MASK, argc, argv, r);

    FUNC3(&vthis);
    return hres;
}