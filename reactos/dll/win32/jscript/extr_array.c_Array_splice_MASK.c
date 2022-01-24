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
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  WORD ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ DISP_E_UNKNOWNNAME ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*) ; 
 scalar_t__ FUNC5 (double) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lengthW ; 
 int FUNC14 (int,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double*) ; 

__attribute__((used)) static HRESULT FUNC16(script_ctx_t *ctx, vdisp_t *vthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    DWORD length, start=0, delete_cnt=0, i, add_args = 0;
    jsdisp_t *ret_array = NULL, *jsthis;
    jsval_t val;
    double d;
    int n;
    HRESULT hres = S_OK;

    FUNC2("\n");

    hres = FUNC4(ctx, vthis, &jsthis, &length);
    if(FUNC0(hres))
        return hres;

    if(argc) {
        hres = FUNC15(ctx, argv[0], &d);
        if(FUNC0(hres))
            return hres;

        if(FUNC5(d)) {
            if((n = d) >= 0)
                start = FUNC14(n, length);
            else
                start = -n > length ? 0 : length + n;
        }else {
            start = d < 0.0 ? 0 : length;
        }
    }

    if(argc >= 2) {
        hres = FUNC15(ctx, argv[1], &d);
        if(FUNC0(hres))
            return hres;

        if(FUNC5(d)) {
            if((n = d) > 0)
                delete_cnt = FUNC14(n, length-start);
        }else if(d > 0.0) {
            delete_cnt = length-start;
        }

        add_args = argc-2;
    }

    if(r) {
        hres = FUNC3(ctx, 0, &ret_array);
        if(FUNC0(hres))
            return hres;

        for(i=0; FUNC1(hres) && i < delete_cnt; i++) {
            hres = FUNC7(jsthis, start+i, &val);
            if(hres == DISP_E_UNKNOWNNAME) {
                hres = S_OK;
            }else if(FUNC1(hres)) {
                hres = FUNC8(ret_array, i, val);
                FUNC13(val);
            }
        }

        if(FUNC1(hres))
            hres = FUNC9(ret_array, lengthW, FUNC11(delete_cnt));
    }

    if(add_args < delete_cnt) {
        for(i = start; FUNC1(hres) && i < length-delete_cnt; i++) {
            hres = FUNC7(jsthis, i+delete_cnt, &val);
            if(hres == DISP_E_UNKNOWNNAME) {
                hres = FUNC6(jsthis, i+add_args);
            }else if(FUNC1(hres)) {
                hres = FUNC8(jsthis, i+add_args, val);
                FUNC13(val);
            }
        }

        for(i=length; FUNC1(hres) && i != length-delete_cnt+add_args; i--)
            hres = FUNC6(jsthis, i-1);
    }else if(add_args > delete_cnt) {
        for(i=length-delete_cnt; FUNC1(hres) && i != start; i--) {
            hres = FUNC7(jsthis, i+delete_cnt-1, &val);
            if(hres == DISP_E_UNKNOWNNAME) {
                hres = FUNC6(jsthis, i+add_args-1);
            }else if(FUNC1(hres)) {
                hres = FUNC8(jsthis, i+add_args-1, val);
                FUNC13(val);
            }
        }
    }

    for(i=0; FUNC1(hres) && i < add_args; i++)
        hres = FUNC8(jsthis, start+i, argv[i+2]);

    if(FUNC1(hres))
        hres = FUNC9(jsthis, lengthW, FUNC11(length-delete_cnt+add_args));

    if(FUNC0(hres)) {
        if(ret_array)
            FUNC10(ret_array);
        return hres;
    }

    if(r)
        *r = FUNC12(ret_array);
    return S_OK;
}