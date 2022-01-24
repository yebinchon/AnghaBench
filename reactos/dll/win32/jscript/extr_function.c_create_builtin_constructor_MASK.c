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
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  builtin_invoke_t ;
typedef  int /*<<< orphan*/  builtin_info_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

HRESULT FUNC4(script_ctx_t *ctx, builtin_invoke_t value_proc, const WCHAR *name,
        const builtin_info_t *builtin_info, DWORD flags, jsdisp_t *prototype, jsdisp_t **ret)
{
    jsdisp_t *constr;
    HRESULT hres;

    hres = FUNC1(ctx, value_proc, name, builtin_info, flags, prototype, &constr);
    if(FUNC0(hres))
        return hres;

    hres = FUNC3(ctx, constr, prototype);
    if(FUNC0(hres)) {
        FUNC2(constr);
        return hres;
    }

    *ret = constr;
    return S_OK;
}