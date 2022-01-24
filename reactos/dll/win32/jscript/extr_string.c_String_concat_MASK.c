#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vdisp_t ;
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int JSSTR_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** FUNC4 (unsigned int const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC6 (unsigned int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static HRESULT FUNC13(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsstr_t *ret = NULL, *str;
    HRESULT hres;

    FUNC2("\n");

    hres = FUNC3(ctx, jsthis, &str);
    if(FUNC0(hres))
        return hres;

    switch(argc) {
    case 0:
        ret = str;
        break;
    case 1: {
        jsstr_t *arg_str;

        hres = FUNC12(ctx, argv[0], &arg_str);
        if(FUNC0(hres)) {
            FUNC10(str);
            return hres;
        }

        ret = FUNC7(str, arg_str);
        FUNC10(str);
        if(!ret)
            return E_OUTOFMEMORY;
        break;
    }
    default: {
        const unsigned str_cnt = argc+1;
        unsigned len = 0, i;
        jsstr_t **strs;
        WCHAR *ptr;

        strs = FUNC4(str_cnt * sizeof(*strs));
        if(!strs) {
            FUNC10(str);
            return E_OUTOFMEMORY;
        }

        strs[0] = str;
        for(i=0; i < argc; i++) {
            hres = FUNC12(ctx, argv[i], strs+i+1);
            if(FUNC0(hres))
                break;
        }

        if(FUNC1(hres)) {
            for(i=0; i < str_cnt; i++) {
                len += FUNC9(strs[i]);
                if(len > JSSTR_MAX_LENGTH) {
                    hres = E_OUTOFMEMORY;
                    break;
                }
            }

            if(FUNC1(hres)) {
                ret = FUNC6(len, &ptr);
                if(ret) {
                    for(i=0; i < str_cnt; i++)
                        ptr += FUNC8(strs[i], ptr);
                }else {
                    hres = E_OUTOFMEMORY;
                }
            }
        }

        while(i--)
            FUNC10(strs[i]);
        FUNC5(strs);
        if(FUNC0(hres))
            return hres;
    }
    }

    if(r)
        *r = FUNC11(ret);
    else
        FUNC10(ret);
    return S_OK;
}