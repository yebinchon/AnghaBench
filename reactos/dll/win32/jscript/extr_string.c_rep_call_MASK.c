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
struct TYPE_5__ {int paren_count; int match_len; int /*<<< orphan*/  const* cp; TYPE_1__* parens; } ;
typedef  TYPE_2__ match_state_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {int index; int /*<<< orphan*/  length; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  DISPATCH_METHOD ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static HRESULT FUNC14(script_ctx_t *ctx, jsdisp_t *func,
        jsstr_t *jsstr, const WCHAR *str, match_state_t *match, jsstr_t **ret)
{
    jsval_t *argv;
    unsigned argc;
    jsval_t val;
    jsstr_t *tmp_str;
    DWORD i;
    HRESULT hres = S_OK;

    argc = match->paren_count+3;
    argv = FUNC3(sizeof(*argv)*argc);
    if(!argv)
        return E_OUTOFMEMORY;

    tmp_str = FUNC6(match->cp-match->match_len, match->match_len);
    if(!tmp_str)
        hres = E_OUTOFMEMORY;
    argv[0] = FUNC12(tmp_str);

    if(FUNC1(hres)) {
        for(i=0; i < match->paren_count; i++) {
            if(match->parens[i].index != -1)
                tmp_str = FUNC9(jsstr, match->parens[i].index, match->parens[i].length);
            else
                tmp_str = FUNC7();
            if(!tmp_str) {
               hres = E_OUTOFMEMORY;
               break;
            }
            argv[i+1] = FUNC12(tmp_str);
        }
    }

    if(FUNC1(hres)) {
        argv[match->paren_count+1] = FUNC10(match->cp-str - match->match_len);
        argv[match->paren_count+2] = FUNC12(jsstr);
    }

    if(FUNC1(hres))
        hres = FUNC5(func, NULL, DISPATCH_METHOD, argc, argv, &val);

    for(i=0; i <= match->paren_count; i++)
        FUNC8(FUNC2(argv[i]));
    FUNC4(argv);

    if(FUNC0(hres))
        return hres;

    hres = FUNC13(ctx, val, ret);
    FUNC11(val);
    return hres;
}