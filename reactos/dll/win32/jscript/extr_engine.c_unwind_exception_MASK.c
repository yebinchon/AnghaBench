#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  val; } ;
struct TYPE_17__ {scalar_t__ stack_top; TYPE_3__ ei; TYPE_6__* call_ctx; } ;
typedef  TYPE_4__ script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
struct TYPE_18__ {unsigned int catch_off; scalar_t__ stack_top; scalar_t__ scope; unsigned int finally_off; struct TYPE_18__* next; } ;
typedef  TYPE_5__ except_frame_t ;
struct TYPE_19__ {scalar_t__ scope; scalar_t__ base_scope; scalar_t__ stack_base; int flags; unsigned int ip; TYPE_5__* except_frame; TYPE_2__* bytecode; } ;
typedef  TYPE_6__ call_frame_t ;
typedef  char WCHAR ;
struct TYPE_15__ {TYPE_1__* instrs; } ;
struct TYPE_14__ {scalar_t__ op; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int EXEC_RETURN_TO_INTERP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ JSV_OBJECT ; 
 scalar_t__ OP_enter_catch ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  jscript ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC20(script_ctx_t *ctx, HRESULT exception_hres)
{
    except_frame_t *except_frame;
    call_frame_t *frame;
    jsval_t except_val;
    unsigned catch_off;
    HRESULT hres;

    if(FUNC3(jscript)) {
        jsdisp_t *error_obj;
        jsval_t msg;

        static const WCHAR messageW[] = {'m','e','s','s','a','g','e',0};

        FUNC2("Exception %08x %s", exception_hres, FUNC6(ctx->ei.val));
        if(FUNC12(ctx->ei.val) == JSV_OBJECT) {
            error_obj = FUNC19(FUNC7(ctx->ei.val));
            if(error_obj) {
                hres = FUNC9(error_obj, messageW, &msg);
                if(FUNC1(hres)) {
                    FUNC2(" (message %s)", FUNC6(msg));
                    FUNC11(msg);
                }
            }
        }
        FUNC2(" in:\n");

        FUNC15(ctx);
    }

    for(frame = ctx->call_ctx; !frame->except_frame; frame = ctx->call_ctx) {
        DWORD flags;

        while(frame->scope != frame->base_scope)
            FUNC16(&frame->scope);

        FUNC17(ctx, ctx->stack_top-frame->stack_base);

        flags = frame->flags;
        FUNC14(ctx);
        if(!(flags & EXEC_RETURN_TO_INTERP))
            return exception_hres;
    }

    except_frame = frame->except_frame;
    catch_off = except_frame->catch_off;

    FUNC4(except_frame->stack_top <= ctx->stack_top);
    FUNC17(ctx, ctx->stack_top - except_frame->stack_top);

    while(except_frame->scope != frame->scope)
        FUNC16(&frame->scope);

    frame->ip = catch_off ? catch_off : except_frame->finally_off;
    if(catch_off) FUNC4(frame->bytecode->instrs[frame->ip].op == OP_enter_catch);

    except_val = ctx->ei.val;
    ctx->ei.val = FUNC13();
    FUNC5(ctx);

    /* keep current except_frame if we're entering catch block with finally block associated */
    if(catch_off && except_frame->finally_off) {
        except_frame->catch_off = 0;
    }else {
        frame->except_frame = except_frame->next;
        FUNC8(except_frame);
    }

    hres = FUNC18(ctx, except_val);
    if(FUNC0(hres))
        return hres;

    if(!catch_off)
        hres = FUNC18(ctx, FUNC10(FALSE));
    return hres;
}