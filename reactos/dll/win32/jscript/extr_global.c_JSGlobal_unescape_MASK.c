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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char const) ; 
 int /*<<< orphan*/ * FUNC3 (size_t,char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,char const**) ; 

__attribute__((used)) static HRESULT FUNC8(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
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
            *r = FUNC6(FUNC5());
        return S_OK;
    }

    hres = FUNC7(ctx, argv[0], &str, &buf);
    if(FUNC0(hres))
        return hres;

    for(ptr = buf; *ptr; ptr++) {
        if(*ptr == '%') {
            if(FUNC2(*(ptr+1))!=-1 && FUNC2(*(ptr+2))!=-1)
                ptr += 2;
            else if(*(ptr+1)=='u' && FUNC2(*(ptr+2))!=-1 && FUNC2(*(ptr+3))!=-1
                    && FUNC2(*(ptr+4))!=-1 && FUNC2(*(ptr+5))!=-1)
                ptr += 5;
        }

        len++;
    }

    ret_str = FUNC3(len, &ret);
    if(!ret_str) {
        FUNC4(str);
        return E_OUTOFMEMORY;
    }

    len = 0;
    for(ptr = buf; *ptr; ptr++) {
        if(*ptr == '%') {
            if(FUNC2(*(ptr+1))!=-1 && FUNC2(*(ptr+2))!=-1) {
                ret[len] = (FUNC2(*(ptr+1))<<4) + FUNC2(*(ptr+2));
                ptr += 2;
            }
            else if(*(ptr+1)=='u' && FUNC2(*(ptr+2))!=-1 && FUNC2(*(ptr+3))!=-1
                    && FUNC2(*(ptr+4))!=-1 && FUNC2(*(ptr+5))!=-1) {
                ret[len] = (FUNC2(*(ptr+2))<<12) + (FUNC2(*(ptr+3))<<8)
                    + (FUNC2(*(ptr+4))<<4) + FUNC2(*(ptr+5));
                ptr += 5;
            }
            else
                ret[len] = *ptr;
        }
        else
            ret[len] = *ptr;

        len++;
    }

    FUNC4(str);

    if(r)
        *r = FUNC6(ret_str);
    else
        FUNC4(ret_str);
    return S_OK;
}