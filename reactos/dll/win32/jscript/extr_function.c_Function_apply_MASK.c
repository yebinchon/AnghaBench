#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  disp; } ;
struct TYPE_11__ {int flags; TYPE_2__ u; } ;
typedef  TYPE_3__ vdisp_t ;
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_12__ {TYPE_1__* vtbl; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* call ) (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_4__ FunctionInstance ;

/* Variables and functions */
 int /*<<< orphan*/  DISPATCH_METHOD ; 
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  JSCLASS_ARGUMENTS ; 
 int /*<<< orphan*/  JSCLASS_ARRAY ; 
 int /*<<< orphan*/  JS_E_FUNCTION_EXPECTED ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int VDISP_JSDISP ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static HRESULT FUNC20(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv, jsval_t *r)
{
    FunctionInstance *function;
    jsval_t *args = NULL;
    unsigned i, cnt = 0;
    IDispatch *this_obj = NULL;
    HRESULT hres = S_OK;

    FUNC4("\n");

    if(!(function = FUNC7(jsthis)) && (jsthis->flags & VDISP_JSDISP))
        return FUNC18(ctx, JS_E_FUNCTION_EXPECTED, NULL);

    if(argc) {
        if(!FUNC14(argv[0]) && !FUNC12(argv[0])) {
            hres = FUNC19(ctx, argv[0], &this_obj);
            if(FUNC0(hres))
                return hres;
        }
    }

    if(argc >= 2) {
        jsdisp_t *arg_array = NULL;

        if(FUNC13(argv[1])) {
            arg_array = FUNC10(FUNC8(argv[1]));
            if(arg_array &&
               (!FUNC11(arg_array, JSCLASS_ARRAY) && !FUNC11(arg_array, JSCLASS_ARGUMENTS) )) {
                FUNC15(arg_array);
                arg_array = NULL;
            }
        }

        if(arg_array) {
            hres = FUNC5(ctx, arg_array, &cnt, &args);
            FUNC15(arg_array);
        }else {
            FUNC1("throw TypeError\n");
            hres = E_FAIL;
        }
    }

    if(FUNC3(hres)) {
        if(function) {
            hres = function->vtbl->call(ctx, function, this_obj, flags, cnt, args, r);
        }else {
            jsval_t res;
            hres = FUNC6(ctx, jsthis->u.disp, this_obj, DISPATCH_METHOD, cnt, args, &res);
            if(FUNC3(hres)) {
                if(r)
                    *r = res;
                else
                    FUNC16(res);
            }
        }
    }

    if(this_obj)
        FUNC2(this_obj);
    for(i=0; i < cnt; i++)
        FUNC16(args[i]);
    FUNC9(args);
    return hres;
}