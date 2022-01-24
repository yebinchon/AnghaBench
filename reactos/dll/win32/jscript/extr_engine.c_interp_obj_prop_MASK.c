#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  script_ctx_t ;
struct TYPE_3__ {int member_0; int /*<<< orphan*/ * setter; void* explicit_setter; int /*<<< orphan*/ * getter; void* explicit_getter; int /*<<< orphan*/  flags; int /*<<< orphan*/  mask; } ;
typedef  TYPE_1__ property_desc_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 unsigned int PROPERTY_DEFINITION_GETTER ; 
 unsigned int PROPERTY_DEFINITION_VALUE ; 
 int PROPF_CONFIGURABLE ; 
 int PROPF_ENUMERABLE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 void* TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC16(script_ctx_t *ctx)
{
    jsstr_t *name_arg = FUNC5(ctx, 0);
    unsigned type = FUNC6(ctx, 1);
    const WCHAR *name;
    jsdisp_t *obj;
    jsval_t val;
    HRESULT hres;

    FUNC0("%s\n", FUNC3(name_arg));

    val = FUNC14(ctx);

    /* FIXME: we should pass it as jsstr_t */
    name = FUNC12(name_arg);

    FUNC2(FUNC8(FUNC15(ctx)));
    obj = FUNC1(FUNC4(FUNC15(ctx)));

    if(type == PROPERTY_DEFINITION_VALUE) {
        hres = FUNC10(obj, name, val);
    }else {
        property_desc_t desc = {PROPF_ENUMERABLE | PROPF_CONFIGURABLE};
        jsdisp_t *func;

        FUNC2(FUNC8(val));
        func = FUNC7(FUNC4(val));

        desc.mask = desc.flags;
        if(type == PROPERTY_DEFINITION_GETTER) {
            desc.explicit_getter = TRUE;
            desc.getter = func;
        }else {
            desc.explicit_setter = TRUE;
            desc.setter = func;
        }

        hres = FUNC9(obj, name, &desc);
        FUNC11(func);
    }

    FUNC13(val);
    return hres;
}