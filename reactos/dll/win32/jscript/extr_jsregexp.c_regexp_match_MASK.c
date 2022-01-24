#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_16__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  tmp_heap; } ;
typedef  TYPE_1__ script_ctx_t ;
struct TYPE_19__ {int match_len; int /*<<< orphan*/  const* cp; } ;
typedef  TYPE_2__ match_state_t ;
struct TYPE_20__ {int index; int length; } ;
typedef  TYPE_3__ match_result_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  heap_pool_t ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_21__ {TYPE_16__* jsregexp; } ;
struct TYPE_17__ {int flags; } ;
typedef  TYPE_4__ RegExpInstance ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int REG_GLOB ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 TYPE_2__* FUNC1 (TYPE_16__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_2__*) ; 
 TYPE_3__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC7 (TYPE_3__*,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC10(script_ctx_t *ctx, jsdisp_t *dispex, jsstr_t *jsstr, BOOL gflag,
        match_result_t **match_result, DWORD *result_cnt)
{
    RegExpInstance *This = FUNC9(dispex);
    match_result_t *ret = NULL;
    match_state_t *result;
    DWORD i=0, ret_size = 0;
    heap_pool_t *mark;
    const WCHAR *str;
    HRESULT hres;

    mark = FUNC6(&ctx->tmp_heap);

    str = FUNC8(jsstr);
    if(!str)
        return E_OUTOFMEMORY;

    result = FUNC1(This->jsregexp, &ctx->tmp_heap, str);
    if(!result) {
        FUNC5(mark);
        return E_OUTOFMEMORY;
    }

    while(1) {
        hres = FUNC2(ctx, This, 0, jsstr, str, result);
        if(hres == S_FALSE) {
            hres = S_OK;
            break;
        }

        if(FUNC0(hres))
            break;

        if(ret_size == i) {
            if(ret) {
                match_result_t *old_ret = ret;

                ret = FUNC7(old_ret, (ret_size <<= 1) * sizeof(match_result_t));
                if(!ret)
                    FUNC4(old_ret);
            }else {
                ret = FUNC3((ret_size=4) * sizeof(match_result_t));
            }
            if(!ret) {
                hres = E_OUTOFMEMORY;
                break;
            }
        }

        ret[i].index = result->cp - str - result->match_len;
        ret[i++].length = result->match_len;

        if(!gflag && !(This->jsregexp->flags & REG_GLOB)) {
            hres = S_OK;
            break;
        }
    }

    FUNC5(mark);
    if(FUNC0(hres)) {
        FUNC4(ret);
        return hres;
    }

    *match_result = ret;
    *result_cnt = i;
    return S_OK;
}