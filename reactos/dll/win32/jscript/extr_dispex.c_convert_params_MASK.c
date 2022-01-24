#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jsval_t ;
struct TYPE_3__ {unsigned int cArgs; unsigned int cNamedArgs; unsigned int rgvarg; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ DISPPARAMS ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/ * FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC5(const DISPPARAMS *dp, jsval_t *buf, unsigned *argc, jsval_t **ret)
{
    jsval_t *argv;
    unsigned cnt;
    unsigned i;
    HRESULT hres;

    cnt = dp->cArgs - dp->cNamedArgs;

    if(cnt > 6) {
        argv = FUNC1(cnt * sizeof(*argv));
        if(!argv)
            return E_OUTOFMEMORY;
    }else {
        argv = buf;
    }

    for(i = 0; i < cnt; i++) {
        hres = FUNC4(dp->rgvarg+dp->cArgs-i-1, argv+i);
        if(FUNC0(hres)) {
            while(i--)
                FUNC3(argv[i]);
            if(argv != buf)
                FUNC2(argv);
            return hres;
        }
    }

    *argc = cnt;
    *ret = argv;
    return S_OK;
}