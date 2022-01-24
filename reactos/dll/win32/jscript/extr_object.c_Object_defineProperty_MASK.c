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
typedef  int /*<<< orphan*/  vdisp_t ;
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  property_desc_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOTIMPL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  JS_E_OBJECT_EXPECTED ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC16(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags,
                                     unsigned argc, jsval_t *argv, jsval_t *r)
{
    property_desc_t prop_desc;
    jsdisp_t *obj, *attr_obj;
    const WCHAR *name;
    jsstr_t *name_str;
    HRESULT hres;

    FUNC3("\n");

    if(argc < 1 || !FUNC5(argv[0]))
        return FUNC12(ctx, JS_E_OBJECT_EXPECTED, NULL);
    obj = FUNC14(FUNC4(argv[0]));
    if(!obj) {
        FUNC1("not implemented non-JS object\n");
        return E_NOTIMPL;
    }

    hres = FUNC13(ctx, argc >= 2 ? argv[1] : FUNC10(), &name_str, &name);
    if(FUNC0(hres))
        return hres;

    if(argc >= 3 && FUNC5(argv[2])) {
        attr_obj = FUNC14(FUNC4(argv[2]));
        if(attr_obj) {
            hres = FUNC15(ctx, attr_obj, &prop_desc);
        }else {
            FUNC1("not implemented non-JS object\n");
            hres = E_NOTIMPL;
        }
    }else {
        hres = FUNC12(ctx, JS_E_OBJECT_EXPECTED, NULL);
    }
    FUNC8(name_str);
    if(FUNC0(hres))
        return hres;

    hres = FUNC7(obj, name, &prop_desc);
    FUNC11(&prop_desc);
    if(FUNC2(hres) && r)
        *r = FUNC9(FUNC6(obj));
    return hres;
}