#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  script_ctx_t ;
struct TYPE_5__ {size_t paren_count; char const* cp; int match_len; TYPE_1__* parens; } ;
typedef  TYPE_2__ match_state_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  char WCHAR ;
struct TYPE_4__ {int index; int /*<<< orphan*/  length; } ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,int) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC15(script_ctx_t *ctx, jsstr_t *input_str,
        const match_state_t *result, IDispatch **ret)
{
    const WCHAR *input;
    jsdisp_t *array;
    jsstr_t *str;
    DWORD i;
    HRESULT hres = S_OK;

    static const WCHAR indexW[] = {'i','n','d','e','x',0};
    static const WCHAR inputW[] = {'i','n','p','u','t',0};
    static const WCHAR lastIndexW[] = {'l','a','s','t','I','n','d','e','x',0};
    static const WCHAR zeroW[] = {'0',0};

    input = FUNC9(input_str);
    if(!input)
        return E_OUTOFMEMORY;

    hres = FUNC2(ctx, result->paren_count+1, &array);
    if(FUNC0(hres))
        return hres;

    for(i=0; i < result->paren_count; i++) {
        if(result->parens[i].index != -1)
            str = FUNC11(input_str, result->parens[i].index, result->parens[i].length);
        else
            str = FUNC8();
        if(!str) {
            hres = E_OUTOFMEMORY;
            break;
        }

        hres = FUNC3(array, i+1, FUNC13(str));
        FUNC10(str);
        if(FUNC0(hres))
            break;
    }

    while(FUNC1(hres)) {
        hres = FUNC4(array, indexW, FUNC12(result->cp-input-result->match_len));
        if(FUNC0(hres))
            break;

        hres = FUNC4(array, lastIndexW, FUNC12(result->cp-input));
        if(FUNC0(hres))
            break;

        hres = FUNC4(array, inputW, FUNC13(FUNC6(input_str)));
        if(FUNC0(hres))
            break;

        str = FUNC7(result->cp-result->match_len, result->match_len);
        if(!str) {
            hres = E_OUTOFMEMORY;
            break;
        }
        hres = FUNC4(array, zeroW, FUNC13(str));
        FUNC10(str);
        break;
    }

    if(FUNC0(hres)) {
        FUNC5(array);
        return hres;
    }

    *ret = FUNC14(array);
    return S_OK;
}