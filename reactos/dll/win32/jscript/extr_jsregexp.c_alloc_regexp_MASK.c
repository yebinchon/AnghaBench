#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  regexp_constr; } ;
typedef  TYPE_1__ script_ctx_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
struct TYPE_10__ {int /*<<< orphan*/  dispex; } ;
typedef  TYPE_2__ RegExpInstance ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RegExpInst_info ; 
 int /*<<< orphan*/  RegExp_info ; 
 int /*<<< orphan*/  S_OK ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC5(script_ctx_t *ctx, jsdisp_t *object_prototype, RegExpInstance **ret)
{
    RegExpInstance *regexp;
    HRESULT hres;

    regexp = FUNC1(sizeof(RegExpInstance));
    if(!regexp)
        return E_OUTOFMEMORY;

    if(object_prototype)
        hres = FUNC3(&regexp->dispex, ctx, &RegExp_info, object_prototype);
    else
        hres = FUNC4(&regexp->dispex, ctx, &RegExpInst_info, ctx->regexp_constr);

    if(FUNC0(hres)) {
        FUNC2(regexp);
        return hres;
    }

    *ret = regexp;
    return S_OK;
}