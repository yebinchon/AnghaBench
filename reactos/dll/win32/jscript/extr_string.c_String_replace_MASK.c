#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vdisp_t ;
struct TYPE_17__ {TYPE_4__* buf; int /*<<< orphan*/  len; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_2__ strbuf_t ;
struct TYPE_18__ {int last_match_index; int last_match_length; int /*<<< orphan*/ * last_match; } ;
typedef  TYPE_3__ script_ctx_t ;
struct TYPE_19__ {int const* cp; int match_len; int paren_count; TYPE_1__* parens; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_4__ match_state_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  WORD ;
typedef  int WCHAR ;
struct TYPE_16__ {int index; int length; } ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 scalar_t__ E_OUTOFMEMORY ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  JSCLASS_FUNCTION ; 
 int /*<<< orphan*/  JSCLASS_REGEXP ; 
 int REM_ALLOC_RESULT ; 
 int REM_CHECK_GLOBAL ; 
 int REM_NO_CTX_UPDATE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int const**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int const) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (TYPE_3__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,TYPE_4__**) ; 
 scalar_t__ FUNC19 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int const*,TYPE_4__*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC20 (TYPE_2__*,int const*,...) ; 
 scalar_t__ FUNC21 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int const**) ; 
 int* FUNC23 (int const*,char) ; 
 int const* FUNC24 (int const*,int const*) ; 

__attribute__((used)) static HRESULT FUNC25(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    const WCHAR *str, *match_str = NULL, *rep_str = NULL;
    jsstr_t *rep_jsstr, *match_jsstr, *jsstr;
    jsdisp_t *rep_func = NULL, *regexp = NULL;
    match_state_t *match = NULL, last_match = {0};
    strbuf_t ret = {NULL,0,0};
    DWORD re_flags = REM_NO_CTX_UPDATE|REM_ALLOC_RESULT;
    DWORD rep_len=0;
    HRESULT hres = S_OK;

    FUNC3("\n");

    hres = FUNC6(ctx, jsthis, &jsstr, &str);
    if(FUNC1(hres))
        return hres;

    if(!argc) {
        if(r)
            *r = FUNC17(jsstr);
        else
            FUNC16(jsstr);
        return S_OK;
    }

    if(FUNC10(argv[0])) {
        regexp = FUNC8(FUNC5(argv[0]));
        if(regexp && !FUNC9(regexp, JSCLASS_REGEXP)) {
            FUNC12(regexp);
            regexp = NULL;
        }
    }

    if(!regexp) {
        hres = FUNC22(ctx, argv[0], &match_jsstr, &match_str);
        if(FUNC1(hres)) {
            FUNC16(jsstr);
            return hres;
        }
    }

    if(argc >= 2) {
        if(FUNC10(argv[1])) {
            rep_func = FUNC8(FUNC5(argv[1]));
            if(rep_func && !FUNC9(rep_func, JSCLASS_FUNCTION)) {
                FUNC12(rep_func);
                rep_func = NULL;
            }
        }

        if(!rep_func) {
            hres = FUNC22(ctx, argv[1], &rep_jsstr, &rep_str);
            if(FUNC2(hres))
                rep_len = FUNC15(rep_jsstr);
        }
    }

    if(FUNC2(hres)) {
        const WCHAR *ecp = str;

        while(1) {
            if(regexp) {
                hres = FUNC18(ctx, regexp, re_flags, jsstr, &match);
                re_flags = (re_flags | REM_CHECK_GLOBAL) & (~REM_ALLOC_RESULT);

                if(hres == S_FALSE) {
                    hres = S_OK;
                    break;
                }
                if(FUNC1(hres))
                    break;

                last_match.cp = match->cp;
                last_match.match_len = match->match_len;
            }else {
                if(re_flags & REM_ALLOC_RESULT) {
                    re_flags &= ~REM_ALLOC_RESULT;
                    match = &last_match;
                    match->cp = str;
                }

                match->cp = FUNC24(match->cp, match_str);
                if(!match->cp)
                    break;
                match->match_len = FUNC15(match_jsstr);
                match->cp += match->match_len;
            }

            hres = FUNC20(&ret, ecp, match->cp-ecp-match->match_len);
            ecp = match->cp;
            if(FUNC1(hres))
                break;

            if(rep_func) {
                jsstr_t *cstr;

                hres = FUNC19(ctx, rep_func, jsstr, str, match, &cstr);
                if(FUNC1(hres))
                    break;

                hres = FUNC21(&ret, cstr);
                FUNC16(cstr);
                if(FUNC1(hres))
                    break;
            }else if(rep_str && regexp) {
                const WCHAR *ptr = rep_str, *ptr2;

                while((ptr2 = FUNC23(ptr, '$'))) {
                    hres = FUNC20(&ret, ptr, ptr2-ptr);
                    if(FUNC1(hres))
                        break;

                    switch(ptr2[1]) {
                    case '$':
                        hres = FUNC20(&ret, ptr2, 1);
                        ptr = ptr2+2;
                        break;
                    case '&':
                        hres = FUNC20(&ret, match->cp-match->match_len, match->match_len);
                        ptr = ptr2+2;
                        break;
                    case '`':
                        hres = FUNC20(&ret, str, match->cp-str-match->match_len);
                        ptr = ptr2+2;
                        break;
                    case '\'':
                        hres = FUNC20(&ret, ecp, (str+FUNC15(jsstr))-ecp);
                        ptr = ptr2+2;
                        break;
                    default: {
                        DWORD idx;

                        if(!FUNC11(ptr2[1])) {
                            hres = FUNC20(&ret, ptr2, 1);
                            ptr = ptr2+1;
                            break;
                        }

                        idx = ptr2[1] - '0';
                        if(FUNC11(ptr2[2]) && idx*10 + (ptr2[2]-'0') <= match->paren_count) {
                            idx = idx*10 + (ptr[2]-'0');
                            ptr = ptr2+3;
                        }else if(idx && idx <= match->paren_count) {
                            ptr = ptr2+2;
                        }else {
                            hres = FUNC20(&ret, ptr2, 1);
                            ptr = ptr2+1;
                            break;
                        }

                        if(match->parens[idx-1].index != -1)
                            hres = FUNC20(&ret, str+match->parens[idx-1].index,
                                    match->parens[idx-1].length);
                    }
                    }

                    if(FUNC1(hres))
                        break;
                }

                if(FUNC2(hres))
                    hres = FUNC20(&ret, ptr, (rep_str+rep_len)-ptr);
                if(FUNC1(hres))
                    break;
            }else if(rep_str) {
                hres = FUNC20(&ret, rep_str, rep_len);
                if(FUNC1(hres))
                    break;
            }else {
                static const WCHAR undefinedW[] = {'u','n','d','e','f','i','n','e','d'};

                hres = FUNC20(&ret, undefinedW, FUNC0(undefinedW));
                if(FUNC1(hres))
                    break;
            }

            if(!regexp)
                break;
            else if(!match->match_len)
                match->cp++;
        }

        if(FUNC2(hres))
            hres = FUNC20(&ret, ecp, str+FUNC15(jsstr)-ecp);
    }

    if(rep_func)
        FUNC12(rep_func);
    if(rep_str)
        FUNC16(rep_jsstr);
    if(match_str)
        FUNC16(match_jsstr);
    if(regexp)
        FUNC7(match);

    if(FUNC2(hres) && last_match.cp && regexp) {
        FUNC16(ctx->last_match);
        ctx->last_match = FUNC13(jsstr);
        ctx->last_match_index = last_match.cp-str-last_match.match_len;
        ctx->last_match_length = last_match.match_len;
    }

    if(regexp)
        FUNC12(regexp);
    FUNC16(jsstr);

    if(FUNC2(hres) && r) {
        jsstr_t *ret_str;

        ret_str = FUNC14(ret.buf, ret.len);
        if(!ret_str)
            return E_OUTOFMEMORY;

        FUNC3("= %s\n", FUNC4(ret_str));
        *r = FUNC17(ret_str);
    }

    FUNC7(ret.buf);
    return hres;
}