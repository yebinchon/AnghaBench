#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  builtin_invoke_t ;
typedef  int /*<<< orphan*/  builtin_info_t ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  dispex; int /*<<< orphan*/  length; } ;
struct TYPE_4__ {TYPE_1__ function; int /*<<< orphan*/  const* name; int /*<<< orphan*/  proc; } ;
typedef  TYPE_2__ NativeFunction ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  NativeFunctionVtbl ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lengthW ; 
 int /*<<< orphan*/  prototypeW ; 

HRESULT FUNC7(script_ctx_t *ctx, builtin_invoke_t value_proc, const WCHAR *name,
        const builtin_info_t *builtin_info, DWORD flags, jsdisp_t *prototype, jsdisp_t **ret)
{
    NativeFunction *function;
    HRESULT hres;

    hres = FUNC2(ctx, builtin_info, &NativeFunctionVtbl, sizeof(NativeFunction), flags, FALSE, NULL, (void**)&function);
    if(FUNC0(hres))
        return hres;

    if(builtin_info)
        hres = FUNC3(&function->function.dispex, lengthW, 0,
                                           FUNC5(function->function.length));
    if(FUNC1(hres))
        hres = FUNC3(&function->function.dispex, prototypeW, 0, FUNC6(prototype));
    if(FUNC0(hres)) {
        FUNC4(&function->function.dispex);
        return hres;
    }

    function->proc = value_proc;
    function->name = name;

    *ret = &function->function.dispex;
    return S_OK;
}