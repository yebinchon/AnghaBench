#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vdisp_t ;
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int WORD ;
struct TYPE_9__ {int /*<<< orphan*/  time; } ;
struct TYPE_8__ {int dwLowDateTime; int /*<<< orphan*/  dwHighDateTime; } ;
typedef  int LONGLONG ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ FILETIME ;
typedef  TYPE_2__ DateInstance ;

/* Variables and functions */
#define  DISPATCH_CONSTRUCT 129 
 int /*<<< orphan*/  E_NOTIMPL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
#define  INVOKE_FUNC 128 
 int /*<<< orphan*/  NO_HINT ; 
 int /*<<< orphan*/  S_OK ; 
 int TIME_EPOCH ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,double,int /*<<< orphan*/ **) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *) ; 
 double FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,double*) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,double*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 double FUNC15 (double) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static HRESULT FUNC19(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsdisp_t *date;
    HRESULT hres;

    FUNC4("\n");

    switch(flags) {
    case DISPATCH_CONSTRUCT:
        switch(argc) {
        /* ECMA-262 3rd Edition    15.9.3.3 */
        case 0:
            hres = FUNC5(ctx, NULL, FUNC7(), &date);
            if(FUNC0(hres))
                return hres;
            break;

        /* ECMA-262 3rd Edition    15.9.3.2 */
        case 1: {
            jsval_t prim;
            double n;

            hres = FUNC17(ctx, argv[0], &prim, NO_HINT);
            if(FUNC0(hres))
                return hres;

            if(FUNC12(prim))
                hres = FUNC8(FUNC11(prim), &n);
            else
                hres = FUNC16(ctx, prim, &n);

            FUNC14(prim);
            if(FUNC0(hres))
                return hres;

            hres = FUNC5(ctx, NULL, FUNC15(n), &date);
            if(FUNC0(hres))
                return hres;
            break;
        }

        /* ECMA-262 3rd Edition    15.9.3.1 */
        default: {
            double ret_date;
            DateInstance *di;

            hres = FUNC10(ctx, argc, argv, &ret_date);
            if(FUNC0(hres))
                return hres;

            hres = FUNC5(ctx, NULL, ret_date, &date);
            if(FUNC0(hres))
                return hres;

            di = FUNC6(date);
            di->time = FUNC18(di->time, di);
        }
        }

        *r = FUNC13(date);
        return S_OK;

    case INVOKE_FUNC: {
        FILETIME system_time, local_time;
        LONGLONG lltime;

        FUNC3(&system_time);
        FUNC2(&system_time, &local_time);
        lltime = ((LONGLONG)local_time.dwHighDateTime<<32)
            + local_time.dwLowDateTime;

        return FUNC9(lltime/10000-TIME_EPOCH, FALSE, 0, r);
    }

    default:
        FUNC1("unimplemented flags %x\n", flags);
        return E_NOTIMPL;
    }

    return S_OK;
}