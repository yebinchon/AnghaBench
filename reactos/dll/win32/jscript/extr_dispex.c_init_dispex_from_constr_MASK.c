#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef  TYPE_1__ dispex_prop_t ;
typedef  int /*<<< orphan*/  builtin_info_t ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PROP_DELETED ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 

HRESULT FUNC12(jsdisp_t *dispex, script_ctx_t *ctx, const builtin_info_t *builtin_info, jsdisp_t *constr)
{
    jsdisp_t *prot = NULL;
    dispex_prop_t *prop;
    HRESULT hres;

    static const WCHAR prototypeW[] = {'p','r','o','t','o','t','y','p','e',0};

    hres = FUNC3(constr, FUNC11(prototypeW), prototypeW, &prop);
    if(FUNC2(hres) && prop && prop->type!=PROP_DELETED) {
        jsval_t val;

        hres = FUNC10(constr, prop, &val);
        if(FUNC1(hres)) {
            FUNC0("Could not get prototype\n");
            return hres;
        }

        if(FUNC7(val))
            prot = FUNC5(FUNC4(val));
        FUNC9(val);
    }

    hres = FUNC6(dispex, ctx, builtin_info, prot);

    if(prot)
        FUNC8(prot);
    return hres;
}