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
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  function_endW ;
typedef  int /*<<< orphan*/  function_beginW ;
typedef  int /*<<< orphan*/  function_anonymousW ;
struct TYPE_6__ {int func_cnt; int var_cnt; int /*<<< orphan*/  funcs; } ;
struct TYPE_7__ {TYPE_1__ global_code; } ;
typedef  TYPE_2__ bytecode_t ;
typedef  float WCHAR ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int FUNC0 (float const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  E_UNEXPECTED ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,float*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (float*) ; 
 void* FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (float*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,float*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (float*,float const*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static HRESULT FUNC17(script_ctx_t *ctx, unsigned argc, jsval_t *argv, IDispatch **ret)
{
    WCHAR *str = NULL, *ptr;
    unsigned len = 0, i = 0;
    bytecode_t *code;
    jsdisp_t *function;
    jsstr_t **params = NULL;
    int j = 0;
    HRESULT hres = S_OK;

    static const WCHAR function_anonymousW[] = {'f','u','n','c','t','i','o','n',' ','a','n','o','n','y','m','o','u','s','('};
    static const WCHAR function_beginW[] = {')',' ','{','\n'};
    static const WCHAR function_endW[] = {'\n','}',0};

    if(argc) {
        params = FUNC8(argc*sizeof(*params));
        if(!params)
            return E_OUTOFMEMORY;

        if(argc > 2)
            len = (argc-2)*2; /* separating commas */
        for(i=0; i < argc; i++) {
            hres = FUNC16(ctx, argv[i], params+i);
            if(FUNC2(hres))
                break;
            len += FUNC11(params[i]);
        }
    }

    if(FUNC3(hres)) {
        len += FUNC0(function_anonymousW) + FUNC0(function_beginW) + FUNC0(function_endW);
        str = FUNC8(len*sizeof(WCHAR));
        if(str) {
            FUNC13(str, function_anonymousW, sizeof(function_anonymousW));
            ptr = str + FUNC0(function_anonymousW);
            if(argc > 1) {
                while(1) {
                    ptr += FUNC10(params[j], ptr);
                    if(++j == argc-1)
                        break;
                    *ptr++ = ',';
                    *ptr++ = ' ';
                }
            }
            FUNC13(ptr, function_beginW, sizeof(function_beginW));
            ptr += FUNC0(function_beginW);
            if(argc)
                ptr += FUNC10(params[argc-1], ptr);
            FUNC13(ptr, function_endW, sizeof(function_endW));

            FUNC4("%s\n", FUNC7(str));
        }else {
            hres = E_OUTOFMEMORY;
        }
    }

    while(i)
        FUNC12(params[--i]);
    FUNC9(params);
    if(FUNC2(hres))
        return hres;

    hres = FUNC5(ctx, str, NULL, NULL, FALSE, FALSE, &code);
    FUNC9(str);
    if(FUNC2(hres))
        return hres;

    if(code->global_code.func_cnt != 1 || code->global_code.var_cnt != 1) {
        FUNC1("Invalid parser result!\n");
        FUNC14(code);
        return E_UNEXPECTED;
    }

    hres = FUNC6(ctx, code, code->global_code.funcs, NULL, &function);
    FUNC14(code);
    if(FUNC2(hres))
        return hres;

    *ret = FUNC15(function);
    return S_OK;
}