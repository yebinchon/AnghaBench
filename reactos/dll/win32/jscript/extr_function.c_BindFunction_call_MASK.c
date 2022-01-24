#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
struct TYPE_7__ {TYPE_1__* vtbl; } ;
struct TYPE_6__ {unsigned int argc; int /*<<< orphan*/  this; TYPE_3__* target; int /*<<< orphan*/ * args; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* call ) (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  FunctionInstance ;
typedef  TYPE_2__ BindFunction ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC5(script_ctx_t *ctx, FunctionInstance *func, IDispatch *this_obj, unsigned flags,
         unsigned argc, jsval_t *argv, jsval_t *r)
{
    BindFunction *function = (BindFunction*)func;
    jsval_t *call_args = NULL;
    unsigned call_argc;
    HRESULT hres;

    FUNC0("%p\n", function);

    call_argc = function->argc + argc;
    if(call_argc) {
        call_args = FUNC1(function->argc * sizeof(*function->args));
        if(!call_args)
            return E_OUTOFMEMORY;

        if(function->argc)
            FUNC3(call_args, function->args, function->argc * sizeof(*call_args));
        if(argc)
            FUNC3(call_args + function->argc, argv, argc * sizeof(*call_args));
    }

    hres = function->target->vtbl->call(ctx, function->target, function->this, flags, call_argc, call_args, r);

    FUNC2(call_args);
    return hres;
}