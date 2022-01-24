#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {TYPE_8__* call_ctx; } ;
typedef  TYPE_6__ script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
struct TYPE_16__ {void* id; int /*<<< orphan*/  disp; } ;
struct TYPE_17__ {unsigned int off; void* hres; TYPE_4__ idref; } ;
struct TYPE_19__ {TYPE_5__ u; void* type; } ;
typedef  TYPE_7__ exprval_t ;
struct TYPE_20__ {unsigned int arguments_off; unsigned int variables_off; TYPE_3__* base_scope; TYPE_2__* function; } ;
typedef  TYPE_8__ call_frame_t ;
struct TYPE_15__ {int /*<<< orphan*/  obj; int /*<<< orphan*/  jsobj; int /*<<< orphan*/  frame; } ;
struct TYPE_14__ {unsigned int var_cnt; int /*<<< orphan*/ * params; TYPE_1__* variables; } ;
struct TYPE_13__ {int /*<<< orphan*/  name; } ;
typedef  void* HRESULT ;
typedef  void* DISPID ;
typedef  int /*<<< orphan*/  BSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 void* EXPRVAL_IDREF ; 
 void* EXPRVAL_INVALID ; 
 void* EXPRVAL_STACK_REF ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FALSE ; 
#define  JSV_NUMBER 130 
#define  JSV_OBJECT 129 
#define  JSV_UNDEFINED 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_6__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,unsigned int) ; 

__attribute__((used)) static BOOL FUNC12(script_ctx_t *ctx, unsigned n, exprval_t *r)
{
    jsval_t v = FUNC11(ctx, n+1);

    switch(FUNC9(v)) {
    case JSV_NUMBER: {
        call_frame_t *frame = ctx->call_ctx;
        unsigned off = FUNC2(v);

        if(!frame->base_scope->frame && off >= frame->arguments_off) {
            DISPID id;
            BSTR name;
            HRESULT hres;

            /* Got stack reference in deoptimized code. Need to convert it back to variable object reference. */

            FUNC1(off < frame->variables_off + frame->function->var_cnt);
            name = off >= frame->variables_off
                ? frame->function->variables[off - frame->variables_off].name
                : frame->function->params[off - frame->arguments_off];
            hres = FUNC6(ctx->call_ctx->base_scope->jsobj, name, 0, &id);
            if(FUNC0(hres)) {
                r->type = EXPRVAL_INVALID;
                r->u.hres = hres;
                return FALSE;
            }

            *FUNC10(ctx, n+1) = FUNC8(FUNC5(frame->base_scope->jsobj));
            *FUNC10(ctx, n) = FUNC7(id);
            r->type = EXPRVAL_IDREF;
            r->u.idref.disp = frame->base_scope->obj;
            r->u.idref.id = id;
            return TRUE;
        }

        r->type = EXPRVAL_STACK_REF;
        r->u.off = off;
        return TRUE;
    }
    case JSV_OBJECT:
        r->type = EXPRVAL_IDREF;
        r->u.idref.disp = FUNC3(v);
        FUNC1(FUNC4(FUNC11(ctx, n)));
        r->u.idref.id = FUNC2(FUNC11(ctx, n));
        return TRUE;
    case JSV_UNDEFINED:
        r->type = EXPRVAL_INVALID;
        FUNC1(FUNC4(FUNC11(ctx, n)));
        r->u.hres = FUNC2(FUNC11(ctx, n));
        return FALSE;
    default:
        FUNC1(0);
        return FALSE;
    }
}