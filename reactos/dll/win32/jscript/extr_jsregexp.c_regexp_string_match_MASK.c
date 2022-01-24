#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  tmp_heap; } ;
typedef  TYPE_1__ script_ctx_t ;
typedef  int /*<<< orphan*/  match_state_t ;
struct TYPE_15__ {scalar_t__ length; scalar_t__ index; } ;
typedef  TYPE_2__ match_result_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  heap_pool_t ;
typedef  char WCHAR ;
struct TYPE_16__ {int /*<<< orphan*/  dispex; TYPE_12__* jsregexp; } ;
struct TYPE_13__ {int flags; } ;
typedef  TYPE_3__ RegExpInstance ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int REG_GLOB ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_12__*,int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,unsigned int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 char* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__**,unsigned int*) ; 
 scalar_t__ FUNC22 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

HRESULT FUNC23(script_ctx_t *ctx, jsdisp_t *re, jsstr_t *jsstr, jsval_t *r)
{
    static const WCHAR indexW[] = {'i','n','d','e','x',0};
    static const WCHAR inputW[] = {'i','n','p','u','t',0};
    static const WCHAR lastIndexW[] = {'l','a','s','t','I','n','d','e','x',0};

    RegExpInstance *regexp = FUNC20(re);
    match_result_t *match_result;
    unsigned match_cnt, i;
    const WCHAR *str;
    jsdisp_t *array;
    HRESULT hres;

    str = FUNC12(jsstr);
    if(!str)
        return E_OUTOFMEMORY;

    if(!(regexp->jsregexp->flags & REG_GLOB)) {
        match_state_t *match;
        heap_pool_t *mark;

        mark = FUNC8(&ctx->tmp_heap);
        match = FUNC3(regexp->jsregexp, &ctx->tmp_heap, str);
        if(!match) {
            FUNC7(mark);
            return E_OUTOFMEMORY;
        }

        hres = FUNC22(ctx, &regexp->dispex, 0, jsstr, &match);
        if(FUNC0(hres)) {
            FUNC7(mark);
            return hres;
        }

        if(r) {
            if(hres == S_OK) {
                IDispatch *ret;

                hres = FUNC5(ctx, jsstr, match, &ret);
                if(FUNC1(hres))
                    *r = FUNC15(ret);
            }else {
                *r = FUNC16();
            }
        }

        FUNC7(mark);
        return S_OK;
    }

    hres = FUNC21(ctx, &regexp->dispex, jsstr, FALSE, &match_result, &match_cnt);
    if(FUNC0(hres))
        return hres;

    if(!match_cnt) {
        FUNC2("no match\n");

        if(r)
            *r = FUNC16();
        return S_OK;
    }

    hres = FUNC4(ctx, match_cnt, &array);
    if(FUNC0(hres))
        return hres;

    for(i=0; i < match_cnt; i++) {
        jsstr_t *tmp_str;

        tmp_str = FUNC14(jsstr, match_result[i].index, match_result[i].length);
        if(!tmp_str) {
            hres = E_OUTOFMEMORY;
            break;
        }

        hres = FUNC9(array, i, FUNC19(tmp_str));
        FUNC13(tmp_str);
        if(FUNC0(hres))
            break;
    }

    while(FUNC1(hres)) {
        hres = FUNC10(array, indexW, FUNC17(match_result[match_cnt-1].index));
        if(FUNC0(hres))
            break;

        hres = FUNC10(array, lastIndexW,
                FUNC17(match_result[match_cnt-1].index + match_result[match_cnt-1].length));
        if(FUNC0(hres))
            break;

        hres = FUNC10(array, inputW, FUNC19(jsstr));
        break;
    }

    FUNC6(match_result);

    if(FUNC1(hres) && r)
        *r = FUNC18(array);
    else
        FUNC11(array);
    return hres;
}