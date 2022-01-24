#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_11__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/  site; TYPE_5__* named_items; scalar_t__ global; TYPE_1__* call_ctx; } ;
typedef  TYPE_3__ script_ctx_t ;
struct TYPE_23__ {int /*<<< orphan*/  obj; scalar_t__ jsobj; TYPE_11__* frame; struct TYPE_23__* next; } ;
typedef  TYPE_4__ scope_chain_t ;
struct TYPE_24__ {int flags; char const* name; int /*<<< orphan*/  disp; struct TYPE_24__* next; } ;
typedef  TYPE_5__ named_item_t ;
struct TYPE_25__ {int /*<<< orphan*/  ref; } ;
typedef  TYPE_6__ local_ref_t ;
typedef  int /*<<< orphan*/  function_code_t ;
struct TYPE_21__ {int /*<<< orphan*/  val; int /*<<< orphan*/  off; } ;
struct TYPE_26__ {TYPE_2__ u; int /*<<< orphan*/  type; } ;
typedef  TYPE_7__ exprval_t ;
typedef  char WCHAR ;
struct TYPE_20__ {TYPE_4__* scope; } ;
struct TYPE_19__ {int /*<<< orphan*/ * function; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DISPID ;
typedef  char const* BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  EXPRVAL_JSVAL ; 
 int /*<<< orphan*/  EXPRVAL_STACK_REF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IDispatch ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  JS_E_UNDEFINED_VARIABLE ; 
 int /*<<< orphan*/  SCRIPTINFO_IUNKNOWN ; 
 int SCRIPTITEM_ISVISIBLE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_11__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fdexNameImplicit ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_11__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (TYPE_3__*,char const*,TYPE_7__*) ; 
 TYPE_6__* FUNC17 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (char const*,char const*) ; 

__attribute__((used)) static HRESULT FUNC20(script_ctx_t *ctx, BSTR identifier, exprval_t *ret)
{
    scope_chain_t *scope;
    named_item_t *item;
    DISPID id = 0;
    HRESULT hres;

    FUNC6("%s\n", FUNC8(identifier));

    if(ctx->call_ctx) {
        for(scope = ctx->call_ctx->scope; scope; scope = scope->next) {
            if(scope->frame) {
                function_code_t *func = scope->frame->function;
                local_ref_t *ref = FUNC17(func, identifier);
                static const WCHAR argumentsW[] = {'a','r','g','u','m','e','n','t','s',0};

                if(ref) {
                    ret->type = EXPRVAL_STACK_REF;
                    ret->u.off = FUNC15(scope->frame, ref->ref);
                    FUNC6("returning ref %d for %d\n", ret->u.off, ref->ref);
                    return S_OK;
                }

                if(!FUNC19(identifier, argumentsW)) {
                    hres = FUNC9(ctx, scope->frame, FALSE);
                    if(FUNC0(hres))
                        return hres;
                }
            }
            if(scope->jsobj)
                hres = FUNC13(scope->jsobj, identifier, fdexNameImplicit, &id);
            else
                hres = FUNC10(ctx, scope->obj, identifier, identifier, fdexNameImplicit, &id);
            if(FUNC5(hres)) {
                FUNC11(ret, scope->obj, id);
                return S_OK;
            }
        }
    }

    hres = FUNC13(ctx->global, identifier, 0, &id);
    if(FUNC5(hres)) {
        FUNC11(ret, FUNC18(ctx->global), id);
        return S_OK;
    }

    for(item = ctx->named_items; item; item = item->next) {
        if((item->flags & SCRIPTITEM_ISVISIBLE) && !FUNC19(item->name, identifier)) {
            if(!item->disp) {
                IUnknown *unk;

                if(!ctx->site)
                    break;

                hres = FUNC1(ctx->site, identifier,
                                                     SCRIPTINFO_IUNKNOWN, &unk, NULL);
                if(FUNC0(hres)) {
                    FUNC7("GetItemInfo failed: %08x\n", hres);
                    break;
                }

                hres = FUNC3(unk, &IID_IDispatch, (void**)&item->disp);
                FUNC4(unk);
                if(FUNC0(hres)) {
                    FUNC7("object does not implement IDispatch\n");
                    break;
                }
            }

            FUNC2(item->disp);
            ret->type = EXPRVAL_JSVAL;
            ret->u.val = FUNC14(item->disp);
            return S_OK;
        }
    }

    if(FUNC16(ctx, identifier, ret))
        return S_OK;

    FUNC12(ret, JS_E_UNDEFINED_VARIABLE);
    return S_OK;
}