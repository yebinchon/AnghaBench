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
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ DISP_E_UNKNOWNNAME ; 
 scalar_t__ E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  lengthW ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static HRESULT FUNC8(script_ctx_t *ctx, jsdisp_t *arg_array, unsigned *argc, jsval_t **ret)
{
    jsval_t *argv, val;
    DWORD length, i;
    HRESULT hres;

    hres = FUNC4(arg_array, lengthW, &val);
    if(FUNC0(hres))
        return hres;

    hres = FUNC7(ctx, val, &length);
    FUNC5(val);
    if(FUNC0(hres))
        return hres;

    argv = FUNC1(length * sizeof(*argv));
    if(!argv)
        return E_OUTOFMEMORY;

    for(i=0; i<length; i++) {
        hres = FUNC3(arg_array, i, argv+i);
        if(hres == DISP_E_UNKNOWNNAME) {
            argv[i] = FUNC6();
        }else if(FUNC0(hres)) {
            while(i--)
                FUNC5(argv[i]);
            FUNC2(argv);
            return hres;
        }
    }

    *argc = length;
    *ret = argv;
    return S_OK;
}