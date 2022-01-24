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
typedef  int WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int const) ; 
 scalar_t__ FUNC3 (int const) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__,int**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int const**) ; 

__attribute__((used)) static HRESULT FUNC9(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsstr_t *ret_str, *str;
    const WCHAR *ptr, *buf;
    DWORD len = 0;
    WCHAR *ret;
    HRESULT hres;

    FUNC1("\n");

    if(!argc) {
        if(r)
            *r = FUNC7(FUNC6());
        return S_OK;
    }

    hres = FUNC8(ctx, argv[0], &str, &buf);
    if(FUNC0(hres))
        return hres;

    for(ptr = buf; *ptr; ptr++) {
        if(*ptr > 0xff)
            len += 6;
        else if(FUNC3(*ptr))
            len++;
        else
            len += 3;
    }

    ret_str = FUNC4(len, &ret);
    if(!ret_str) {
        FUNC5(str);
        return E_OUTOFMEMORY;
    }

    len = 0;
    for(ptr = buf; *ptr; ptr++) {
        if(*ptr > 0xff) {
            ret[len++] = '%';
            ret[len++] = 'u';
            ret[len++] = FUNC2(*ptr >> 12);
            ret[len++] = FUNC2((*ptr >> 8) & 0xf);
            ret[len++] = FUNC2((*ptr >> 4) & 0xf);
            ret[len++] = FUNC2(*ptr & 0xf);
        }
        else if(FUNC3(*ptr))
            ret[len++] = *ptr;
        else {
            ret[len++] = '%';
            ret[len++] = FUNC2(*ptr >> 4);
            ret[len++] = FUNC2(*ptr & 0xf);
        }
    }

    FUNC5(str);

    if(r)
        *r = FUNC7(ret_str);
    else
        FUNC5(ret_str);
    return S_OK;
}