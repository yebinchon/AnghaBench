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
typedef  int INT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DOUBLE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int NAN ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int const**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static HRESULT FUNC8(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    BOOL neg = FALSE, empty = TRUE;
    const WCHAR *ptr;
    DOUBLE ret = 0.0;
    INT radix=0, i;
    jsstr_t *str;
    HRESULT hres;

    if(!argc) {
        if(r)
            *r = FUNC5(NAN);
        return S_OK;
    }

    if(argc >= 2) {
        hres = FUNC7(ctx, argv[1], &radix);
        if(FUNC0(hres))
            return hres;

        if(radix && (radix < 2 || radix > 36)) {
            FUNC1("radix %d out of range\n", radix);
            if(r)
                *r = FUNC5(NAN);
            return S_OK;
        }
    }

    hres = FUNC6(ctx, argv[0], &str, &ptr);
    if(FUNC0(hres))
        return hres;

    while(FUNC3(*ptr))
        ptr++;

    switch(*ptr) {
    case '+':
        ptr++;
        break;
    case '-':
        neg = TRUE;
        ptr++;
        break;
    }

    if(!radix) {
        if(*ptr == '0') {
            if(ptr[1] == 'x' || ptr[1] == 'X') {
                radix = 16;
                ptr += 2;
            }else {
                radix = 8;
                ptr++;
                empty = FALSE;
            }
        }else {
            radix = 10;
        }
    }else if(radix == 16 && *ptr == '0' && (ptr[1] == 'x' || ptr[1] == 'X')) {
        ptr += 2;
    }

    i = FUNC2(*ptr++);
    if(i < radix) {
        do {
            ret = ret*radix + i;
            i = FUNC2(*ptr++);
        }while(i < radix);
    }else if(empty) {
        ret = NAN;
    }

    FUNC4(str);

    if(neg)
        ret = -ret;

    if(r)
        *r = FUNC5(ret);
    return S_OK;
}