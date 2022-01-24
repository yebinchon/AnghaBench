#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  property_desc_t ;
typedef  int /*<<< orphan*/  jsval_t ;
struct TYPE_9__ {int /*<<< orphan*/  IDispatchEx_iface; } ;
typedef  TYPE_1__ jsdisp_t ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DISPID ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  DISPID_STARTENUM ; 
 int /*<<< orphan*/  E_NOTIMPL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC16(script_ctx_t *ctx, jsdisp_t *obj, jsval_t list_val)
{
    DISPID id = DISPID_STARTENUM;
    property_desc_t prop_desc;
    IDispatch *list_disp;
    jsdisp_t *list_obj, *desc_obj;
    jsval_t desc_val;
    BSTR name;
    HRESULT hres;

    hres = FUNC14(ctx, list_val, &list_disp);
    if(FUNC0(hres))
        return hres;

    if(!(list_obj = FUNC13(list_disp))) {
        FUNC1("non-JS list obj\n");
        FUNC3(list_disp);
        return E_NOTIMPL;
    }

    while(1) {
        hres = FUNC8(list_obj, id, TRUE, &id);
        if(hres != S_OK)
            break;

        hres = FUNC9(list_obj, id, &desc_val);
        if(FUNC0(hres))
            break;

        if(!FUNC6(desc_val) || !FUNC5(desc_val) || !(desc_obj = FUNC13(FUNC5(desc_val)))) {
            FUNC11(desc_val);
            break;
        }

        hres = FUNC15(ctx, desc_obj, &prop_desc);
        FUNC10(desc_obj);
        if(FUNC0(hres))
            break;

        hres = FUNC2(&list_obj->IDispatchEx_iface, id, &name);
        if(FUNC4(hres))
            hres = FUNC7(obj, name, &prop_desc);
        FUNC12(&prop_desc);
        if(FUNC0(hres))
            break;
    }

    FUNC10(list_obj);
    return FUNC0(hres) ? hres : S_OK;
}