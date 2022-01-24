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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  WORD ;
typedef  scalar_t__ WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JS_E_INVALID_URI_CHAR ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__ const*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC3 (char) ; 
 scalar_t__ FUNC4 (scalar_t__ const) ; 
 int /*<<< orphan*/ * FUNC5 (int,scalar_t__**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,scalar_t__ const**) ; 

__attribute__((used)) static HRESULT FUNC11(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsstr_t *str, *ret_str;
    char buf[4];
    const WCHAR *ptr, *uri;
    DWORD len = 0, size, i;
    WCHAR *ret;
    HRESULT hres;

    FUNC1("\n");

    if(!argc) {
        if(r)
            *r = FUNC8(FUNC7());
        return S_OK;
    }

    hres = FUNC10(ctx, argv[0], &str, &uri);
    if(FUNC0(hres))
        return hres;

    for(ptr = uri; *ptr; ptr++) {
        if(FUNC4(*ptr))
            len++;
        else {
            size = FUNC2(CP_UTF8, 0, ptr, 1, NULL, 0, NULL, NULL);
            if(!size) {
                FUNC6(str);
                return FUNC9(ctx, JS_E_INVALID_URI_CHAR, NULL);
            }
            len += size*3;
        }
    }

    ret_str = FUNC5(len, &ret);
    if(!ret_str) {
        FUNC6(str);
        return E_OUTOFMEMORY;
    }

    for(ptr = uri; *ptr; ptr++) {
        if(FUNC4(*ptr)) {
            *ret++ = *ptr;
        }else {
            size = FUNC2(CP_UTF8, 0, ptr, 1, buf, sizeof(buf), NULL, NULL);
            for(i=0; i<size; i++) {
                *ret++ = '%';
                *ret++ = FUNC3((BYTE)buf[i] >> 4);
                *ret++ = FUNC3(buf[i] & 0x0f);
            }
        }
    }

    FUNC6(str);

    if(r)
        *r = FUNC8(ret_str);
    else
        FUNC6(ret_str);
    return S_OK;
}