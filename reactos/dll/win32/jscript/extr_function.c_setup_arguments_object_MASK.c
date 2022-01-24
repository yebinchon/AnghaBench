#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  object_constr; } ;
typedef  TYPE_3__ script_ctx_t ;
struct TYPE_15__ {int /*<<< orphan*/ * arguments_obj; TYPE_2__* base_scope; int /*<<< orphan*/  argc; int /*<<< orphan*/  function_instance; } ;
typedef  TYPE_4__ call_frame_t ;
typedef  char WCHAR ;
struct TYPE_17__ {int /*<<< orphan*/  jsdisp; TYPE_5__* function; int /*<<< orphan*/  argc; TYPE_4__* frame; } ;
struct TYPE_12__ {int /*<<< orphan*/  dispex; } ;
struct TYPE_16__ {TYPE_1__ function; } ;
struct TYPE_13__ {int /*<<< orphan*/  jsobj; } ;
typedef  TYPE_5__ InterpretedFunction ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_6__ ArgumentsInstance ;

/* Variables and functions */
 int /*<<< orphan*/  Arguments_info ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PROPF_CONFIGURABLE ; 
 int PROPF_WRITABLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  argumentsW ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 char const* lengthW ; 

HRESULT FUNC12(script_ctx_t *ctx, call_frame_t *frame)
{
    ArgumentsInstance *args;
    HRESULT hres;

    static const WCHAR caleeW[] = {'c','a','l','l','e','e',0};

    args = FUNC3(sizeof(*args));
    if(!args)
        return E_OUTOFMEMORY;

    hres = FUNC5(&args->jsdisp, ctx, &Arguments_info, ctx->object_constr);
    if(FUNC0(hres)) {
        FUNC4(args);
        return hres;
    }

    args->function = (InterpretedFunction*)FUNC2(FUNC6(frame->function_instance));
    args->argc = frame->argc;
    args->frame = frame;

    hres = FUNC7(&args->jsdisp, lengthW, PROPF_WRITABLE | PROPF_CONFIGURABLE,
                                       FUNC10(args->argc));
    if(FUNC1(hres))
        hres = FUNC7(&args->jsdisp, caleeW, PROPF_WRITABLE | PROPF_CONFIGURABLE,
                                           FUNC11(&args->function->function.dispex));
    if(FUNC1(hres))
        hres = FUNC8(frame->base_scope->jsobj, argumentsW, PROPF_WRITABLE, FUNC11(&args->jsdisp));
    if(FUNC0(hres)) {
        FUNC9(&args->jsdisp);
        return hres;
    }

    frame->arguments_obj = &args->jsdisp;
    return S_OK;
}