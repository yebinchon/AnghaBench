#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  acc; } ;
typedef  TYPE_2__ script_ctx_t ;
struct TYPE_14__ {int /*<<< orphan*/  hres; } ;
struct TYPE_16__ {TYPE_1__ u; } ;
typedef  TYPE_3__ exprval_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int DISPATCH_JSCRIPT_CALLEREXECSSOURCE ; 
 int DISPATCH_METHOD ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int const,int const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_3__*,int,unsigned int const,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__*,int) ; 
 unsigned int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,unsigned int const,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC8(script_ctx_t *ctx)
{
    const unsigned argn = FUNC4(ctx, 0);
    const int do_ret = FUNC3(ctx, 1);
    exprval_t ref;

    FUNC0("%d %d\n", argn, do_ret);

    if(!FUNC6(ctx, argn, &ref))
        return FUNC7(ctx, ref.u.hres, NULL);

    FUNC1(ctx);
    return FUNC2(ctx, &ref, DISPATCH_METHOD | DISPATCH_JSCRIPT_CALLEREXECSSOURCE,
            argn, FUNC5(ctx, argn), do_ret ? &ctx->acc : NULL);
}