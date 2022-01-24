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
struct TYPE_4__ {int /*<<< orphan*/  disp; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef  TYPE_2__ vdisp_t ;
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*,int) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/  const**) ; 

__attribute__((used)) static HRESULT FUNC12(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc,
        jsval_t *argv, jsval_t *r)
{
    const WCHAR *str, *begin, *end;
    jsstr_t *jsstr;
    unsigned len;
    HRESULT hres;

    hres = FUNC11(ctx, FUNC9(jsthis->u.disp), &jsstr, &str);
    if(FUNC0(hres)) {
        FUNC2("to_flat_string failed: %08x\n", hres);
        return hres;
    }
    len = FUNC7(jsstr);
    FUNC1("%s\n", FUNC3(str, len));

    for(begin = str, end = str + len; begin < end && FUNC4(*begin); begin++);
    while(end > begin + 1 && FUNC4(*(end-1))) end--;

    if(r) {
        jsstr_t *ret;

        if(begin == str && end == str + len)
            ret = FUNC5(jsstr);
        else
            ret = FUNC6(begin, end - begin);
        if(ret)
            *r = FUNC10(ret);
        else
            hres = E_OUTOFMEMORY;
    }
    FUNC8(jsstr);
    return hres;
}