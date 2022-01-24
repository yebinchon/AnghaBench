#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vdisp_t ;
struct TYPE_11__ {int /*<<< orphan*/  global; TYPE_2__* call_ctx; } ;
typedef  TYPE_1__ script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
struct TYPE_12__ {int flags; int /*<<< orphan*/  variable_obj; int /*<<< orphan*/ * this_obj; int /*<<< orphan*/ * scope; } ;
typedef  TYPE_2__ call_frame_t ;
struct TYPE_13__ {int /*<<< orphan*/  global_code; } ;
typedef  TYPE_3__ bytecode_t ;
typedef  int WORD ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int DISPATCH_JSCRIPT_CALLEREXECSSOURCE ; 
 int EXEC_EVAL ; 
 int EXEC_GLOBAL ; 
 int EXEC_RETURN_TO_INTERP ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

HRESULT FUNC13(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    call_frame_t *frame = ctx->call_ctx;
    DWORD exec_flags = EXEC_EVAL;
    bytecode_t *code;
    const WCHAR *src;
    HRESULT hres;

    FUNC1("\n");

    if(!argc) {
        if(r)
            *r = FUNC10();
        return S_OK;
    }

    if(!FUNC7(argv[0])) {
        if(r)
            return FUNC9(argv[0], r);
        return S_OK;
    }

    src = FUNC8(FUNC6(argv[0]));
    if(!src)
        return E_OUTOFMEMORY;

    FUNC1("parsing %s\n", FUNC4(argv[0]));
    hres = FUNC3(ctx, src, NULL, NULL, TRUE, FALSE, &code);
    if(FUNC0(hres)) {
        FUNC2("parse (%s) failed: %08x\n", FUNC4(argv[0]), hres);
        return FUNC12(ctx, hres, NULL);
    }

    if(!frame || (frame->flags & EXEC_GLOBAL))
        exec_flags |= EXEC_GLOBAL;
    if(flags & DISPATCH_JSCRIPT_CALLEREXECSSOURCE)
        exec_flags |= EXEC_RETURN_TO_INTERP;
    hres = FUNC5(ctx, exec_flags, code, &code->global_code, frame ? frame->scope : NULL,
            frame ? frame->this_obj : NULL, NULL, frame ? frame->variable_obj : ctx->global, 0, NULL, r);
    FUNC11(code);
    return hres;
}