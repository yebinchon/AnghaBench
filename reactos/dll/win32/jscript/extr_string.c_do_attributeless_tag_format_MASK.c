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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,unsigned int) ; 

__attribute__((used)) static HRESULT FUNC9(script_ctx_t *ctx, vdisp_t *jsthis, jsval_t *r, const WCHAR *tagname)
{
    unsigned tagname_len;
    jsstr_t *str, *ret;
    WCHAR *ptr;
    HRESULT hres;

    hres = FUNC1(ctx, jsthis, &str);
    if(FUNC0(hres))
        return hres;

    if(!r) {
        FUNC5(str);
        return S_OK;
    }

    tagname_len = FUNC7(tagname);

    ret = FUNC2(FUNC4(str) + 2*tagname_len + 5, &ptr);
    if(!ret) {
        FUNC5(str);
        return E_OUTOFMEMORY;
    }

    *ptr++ = '<';
    FUNC8(ptr, tagname, tagname_len*sizeof(WCHAR));
    ptr += tagname_len;
    *ptr++ = '>';

    ptr += FUNC3(str, ptr);
    FUNC5(str);

    *ptr++ = '<';
    *ptr++ = '/';
    FUNC8(ptr, tagname, tagname_len*sizeof(WCHAR));
    ptr += tagname_len;
    *ptr = '>';

    *r = FUNC6(ret);
    return S_OK;
}