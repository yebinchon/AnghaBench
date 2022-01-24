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
typedef  int /*<<< orphan*/ **** jsval_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  WORD ;
typedef  scalar_t__ INT ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ DISP_E_UNKNOWNNAME ; 
 scalar_t__ E_FAIL ; 
 scalar_t__ E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  JSCLASS_FUNCTION ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ****) ; 
 int /*<<< orphan*/ ******** FUNC6 (int) ; 
 int /*<<< orphan*/ ******* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ******) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ****) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *****) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ****) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ****** FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ****) ; 
 int /*<<< orphan*/ ****** FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ******,int /*<<< orphan*/ ******,int) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ****,int /*<<< orphan*/ ****,scalar_t__*) ; 

__attribute__((used)) static HRESULT FUNC21(script_ctx_t *ctx, vdisp_t *vthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsdisp_t *jsthis, *cmp_func = NULL;
    jsval_t *vtab, **sorttab = NULL;
    DWORD length;
    DWORD i;
    HRESULT hres = S_OK;

    FUNC2("\n");

    hres = FUNC4(ctx, vthis, &jsthis, &length);
    if(FUNC0(hres))
        return hres;

    if(argc > 1) {
        FUNC3("invalid arg_cnt %d\n", argc);
        return E_FAIL;
    }

    if(argc == 1) {
        if(!FUNC11(argv[0])) {
            FUNC3("arg is not dispatch\n");
            return E_FAIL;
        }

        cmp_func = FUNC9(FUNC5(argv[0]));
        if(!cmp_func || !FUNC10(cmp_func, JSCLASS_FUNCTION)) {
            FUNC3("cmp_func is not a function\n");
            if(cmp_func)
                FUNC15(cmp_func);
            return E_FAIL;
        }
    }

    if(!length) {
        if(cmp_func)
            FUNC15(cmp_func);
        if(r)
            *r = FUNC16(FUNC12(jsthis));
        return S_OK;
    }

    vtab = FUNC7(length * sizeof(*vtab));
    if(vtab) {
        for(i=0; i<length; i++) {
            hres = FUNC13(jsthis, i, vtab+i);
            if(hres == DISP_E_UNKNOWNNAME) {
                vtab[i] = FUNC18();
                hres = S_OK;
            } else if(FUNC0(hres)) {
                FUNC3("Could not get elem %d: %08x\n", i, hres);
                break;
            }
        }
    }else {
        hres = E_OUTOFMEMORY;
    }

    if(FUNC1(hres)) {
        sorttab = FUNC6(length*2*sizeof(*sorttab));
        if(!sorttab)
            hres = E_OUTOFMEMORY;
    }

    /* merge-sort */
    if(FUNC1(hres)) {
        jsval_t *tmpv, **tmpbuf;
        INT cmp;

        tmpbuf = sorttab + length;
        for(i=0; i < length; i++)
            sorttab[i] = vtab+i;

        for(i=0; i < length/2; i++) {
            hres = FUNC20(ctx, cmp_func, *sorttab[2*i+1], *sorttab[2*i], &cmp);
            if(FUNC0(hres))
                break;

            if(cmp < 0) {
                tmpv = sorttab[2*i];
                sorttab[2*i] = sorttab[2*i+1];
                sorttab[2*i+1] = tmpv;
            }
        }

        if(FUNC1(hres)) {
            DWORD k, a, b, bend;

            for(k=2; k < length; k *= 2) {
                for(i=0; i+k < length; i += 2*k) {
                    a = b = 0;
                    if(i+2*k <= length)
                        bend = k;
                    else
                        bend = length - (i+k);

                    FUNC19(tmpbuf, sorttab+i, k*sizeof(jsval_t*));

                    while(a < k && b < bend) {
                        hres = FUNC20(ctx, cmp_func, *tmpbuf[a], *sorttab[i+k+b], &cmp);
                        if(FUNC0(hres))
                            break;

                        if(cmp < 0) {
                            sorttab[i+a+b] = tmpbuf[a];
                            a++;
                        }else {
                            sorttab[i+a+b] = sorttab[i+k+b];
                            b++;
                        }
                    }

                    if(FUNC0(hres))
                        break;

                    if(a < k)
                        FUNC19(sorttab+i+a+b, tmpbuf+a, (k-a)*sizeof(jsval_t*));
                }

                if(FUNC0(hres))
                    break;
            }
        }

        for(i=0; FUNC1(hres) && i < length; i++)
            hres = FUNC14(jsthis, i, *sorttab[i]);
    }

    if(vtab) {
        for(i=0; i < length; i++)
            FUNC17(vtab[i]);
        FUNC8(&vtab);
    }
    FUNC8(sorttab);
    if(cmp_func)
        FUNC15(cmp_func);

    if(FUNC0(hres))
        return hres;

    if(r)
        *r = FUNC16(FUNC12(jsthis));
    return S_OK;
}