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
typedef  int /*<<< orphan*/  vdisp_t ;
typedef  int /*<<< orphan*/  script_ctx_t ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  value; int /*<<< orphan*/ * setter; int /*<<< orphan*/ * getter; scalar_t__ explicit_setter; scalar_t__ explicit_getter; } ;
typedef  TYPE_1__ property_desc_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ DISP_E_UNKNOWNNAME ; 
 scalar_t__ E_NOTIMPL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  JS_E_OBJECT_EXPECTED ; 
 int /*<<< orphan*/  PROPF_ALL ; 
 int PROPF_CONFIGURABLE ; 
 int PROPF_ENUMERABLE ; 
 int PROPF_WRITABLE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  configurableW ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  enumerableW ; 
 int /*<<< orphan*/  getW ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  setW ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  valueW ; 
 int /*<<< orphan*/  writableW ; 

__attribute__((used)) static HRESULT FUNC19(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags,
                                               unsigned argc, jsval_t *argv, jsval_t *r)
{
    property_desc_t prop_desc;
    jsdisp_t *obj, *desc_obj;
    const WCHAR *name;
    jsstr_t *name_str;
    HRESULT hres;

    FUNC3("\n");

    if(argc < 1 || !FUNC6(argv[0]))
        return FUNC16(ctx, JS_E_OBJECT_EXPECTED, NULL);
    obj = FUNC18(FUNC5(argv[0]));
    if(!obj) {
        FUNC1("not implemented non-JS object\n");
        return E_NOTIMPL;
    }

    hres = FUNC17(ctx, argc >= 2 ? argv[1] : FUNC14(), &name_str, &name);
    if(FUNC0(hres))
        return hres;

    hres = FUNC8(obj, name, FALSE, &prop_desc);
    FUNC11(name_str);
    if(hres == DISP_E_UNKNOWNNAME) {
        if(r) *r = FUNC14();
        return S_OK;
    }
    if(FUNC0(hres))
        return hres;

    hres = FUNC4(ctx, NULL, &desc_obj);
    if(FUNC0(hres))
        return hres;

    if(prop_desc.explicit_getter || prop_desc.explicit_setter) {
        hres = FUNC7(desc_obj, getW, PROPF_ALL,
                prop_desc.getter ? FUNC13(prop_desc.getter) : FUNC14());
        if(FUNC2(hres))
            hres = FUNC7(desc_obj, setW, PROPF_ALL,
                    prop_desc.setter ? FUNC13(prop_desc.setter) : FUNC14());
    }else {
        hres = FUNC9(desc_obj, valueW, prop_desc.value);
        if(FUNC2(hres))
            hres = FUNC7(desc_obj, writableW, PROPF_ALL,
                    FUNC12(!!(prop_desc.flags & PROPF_WRITABLE)));
    }
    if(FUNC2(hres))
        hres = FUNC7(desc_obj, enumerableW, PROPF_ALL,
                FUNC12(!!(prop_desc.flags & PROPF_ENUMERABLE)));
    if(FUNC2(hres))
        hres = FUNC7(desc_obj, configurableW, PROPF_ALL,
                FUNC12(!!(prop_desc.flags & PROPF_CONFIGURABLE)));

    FUNC15(&prop_desc);
    if(FUNC2(hres) && r)
        *r = FUNC13(desc_obj);
    else
        FUNC10(desc_obj);
    return hres;
}