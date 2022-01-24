#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_7__ {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
struct TYPE_6__ {int atend; int /*<<< orphan*/  dispex; int /*<<< orphan*/ * enumvar; } ;
typedef  int /*<<< orphan*/  IEnumVARIANT ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ EnumeratorInstance ;
typedef  TYPE_2__ DISPPARAMS ;

/* Variables and functions */
 int /*<<< orphan*/  DISPATCH_METHOD ; 
 int /*<<< orphan*/  DISPID_NEWENUM ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  E_NOTIMPL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IEnumVARIANT ; 
 int /*<<< orphan*/  IID_NULL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  LOCALE_NEUTRAL ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ VT_DISPATCH ; 
 scalar_t__ VT_UNKNOWN ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC15(script_ctx_t *ctx, jsval_t *argv, jsdisp_t **ret)
{
    EnumeratorInstance *enumerator;
    HRESULT hres;
    IDispatch *obj;
    DISPPARAMS dispparams = {NULL, NULL, 0, 0};
    IEnumVARIANT *enumvar = NULL;

    if (argv)
    {
        VARIANT varresult;

        if (!FUNC13(*argv))
        {
            FUNC1("I don't know how to handle this type!\n");
            return E_NOTIMPL;
        }

        obj = FUNC12(*argv);

        /* Try to get a IEnumVARIANT by _NewEnum */
        FUNC8(&varresult);
        hres = FUNC2(obj, DISPID_NEWENUM, &IID_NULL, LOCALE_NEUTRAL,
                DISPATCH_METHOD, &dispparams, &varresult, NULL, NULL);
        if (FUNC0(hres))
        {
            FUNC9("Enumerator: no DISPID_NEWENUM.\n");
            return E_INVALIDARG;
        }

        if ((FUNC6(&varresult) == VT_DISPATCH) || (FUNC6(&varresult) == VT_UNKNOWN))
        {
            hres = FUNC4(FUNC5(&varresult),
                &IID_IEnumVARIANT, (void**)&enumvar);
        }
        else
        {
            FUNC1("Enumerator: NewEnum unexpected type of varresult (%d).\n", FUNC6(&varresult));
            hres = E_INVALIDARG;
        }
        FUNC7(&varresult);
        if (FUNC0(hres))
            return hres;
    }

    hres = FUNC10(ctx, NULL, &enumerator);
    if (FUNC0(hres))
    {
        if (enumvar)
            FUNC3(enumvar);
        return hres;
    }

    enumerator->enumvar = enumvar;
    enumerator->atend = !enumvar;
    hres = FUNC11(enumerator);
    if (FUNC0(hres))
    {
        FUNC14(&enumerator->dispex);
        return hres;
    }

    *ret = &enumerator->dispex;
    return S_OK;
}