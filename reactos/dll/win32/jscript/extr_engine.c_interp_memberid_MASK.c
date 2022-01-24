#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
struct TYPE_6__ {int /*<<< orphan*/  id; int /*<<< orphan*/ * disp; } ;
struct TYPE_7__ {TYPE_1__ idref; } ;
struct TYPE_8__ {TYPE_2__ u; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ exprval_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  DISPID ;

/* Variables and functions */
 scalar_t__ DISP_E_UNKNOWNNAME ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  EXPRVAL_IDREF ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  JS_E_INVALID_PROPERTY ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int const) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,unsigned int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 unsigned int const fdexNameEnsure ; 
 unsigned int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/  const**) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static HRESULT FUNC14(script_ctx_t *ctx)
{
    const unsigned arg = FUNC7(ctx, 0);
    jsval_t objv, namev;
    const WCHAR *name;
    jsstr_t *name_str;
    IDispatch *obj;
    exprval_t ref;
    DISPID id;
    HRESULT hres;

    FUNC4("%x\n", arg);

    namev = FUNC10(ctx);
    objv = FUNC10(ctx);

    hres = FUNC13(ctx, objv, &obj);
    FUNC9(objv);
    if(FUNC3(hres)) {
        hres = FUNC12(ctx, namev, &name_str, &name);
        if(FUNC1(hres))
            FUNC2(obj);
    }
    FUNC9(namev);
    if(FUNC1(hres))
        return hres;

    hres = FUNC5(ctx, obj, name, NULL, arg, &id);
    FUNC8(name_str);
    if(FUNC3(hres)) {
        ref.type = EXPRVAL_IDREF;
        ref.u.idref.disp = obj;
        ref.u.idref.id = id;
    }else {
        FUNC2(obj);
        if(hres == DISP_E_UNKNOWNNAME && !(arg & fdexNameEnsure)) {
            FUNC6(&ref, JS_E_INVALID_PROPERTY);
            hres = S_OK;
        }else {
            FUNC0("failed %08x\n", hres);
            return hres;
        }
    }

    return FUNC11(ctx, &ref);
}