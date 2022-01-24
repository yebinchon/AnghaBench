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
typedef  int INT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/  const**) ; 
 scalar_t__ FUNC4 (double) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 
 unsigned int FUNC9 (unsigned int,double) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double*) ; 

__attribute__((used)) static HRESULT FUNC12(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    unsigned pos = 0, search_len, length;
    jsstr_t *search_jsstr, *jsstr;
    const WCHAR *search_str, *str;
    INT ret = -1;
    HRESULT hres;

    FUNC2("\n");

    hres = FUNC3(ctx, jsthis, &jsstr, &str);
    if(FUNC0(hres))
        return hres;

    if(!argc) {
        if(r)
            *r = FUNC7(-1);
        FUNC6(jsstr);
        return S_OK;
    }

    hres = FUNC10(ctx, argv[0], &search_jsstr, &search_str);
    if(FUNC0(hres)) {
        FUNC6(jsstr);
        return hres;
    }

    search_len = FUNC5(search_jsstr);
    length = FUNC5(jsstr);

    if(argc >= 2) {
        double d;

        hres = FUNC11(ctx, argv[1], &d);
        if(FUNC1(hres) && d > 0.0)
            pos = FUNC4(d) ? FUNC9(length, d) : length;
    }

    if(FUNC1(hres) && length >= search_len) {
        const WCHAR *end = str+length-search_len;
        const WCHAR *ptr;

        for(ptr = str+pos; ptr <= end; ptr++) {
            if(!FUNC8(ptr, search_str, search_len*sizeof(WCHAR))) {
                ret = ptr-str;
                break;
            }
        }
    }

    FUNC6(search_jsstr);
    FUNC6(jsstr);
    if(FUNC0(hres))
        return hres;

    if(r)
        *r = FUNC7(ret);
    return S_OK;
}