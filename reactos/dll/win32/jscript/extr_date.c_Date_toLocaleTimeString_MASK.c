#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vdisp_t ;
struct TYPE_11__ {int /*<<< orphan*/  lcid; } ;
typedef  TYPE_1__ script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_13__ {int /*<<< orphan*/  time; } ;
struct TYPE_12__ {int wYear; } ;
typedef  TYPE_2__ SYSTEMTIME ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_3__ DateInstance ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  JS_E_DATE_EXPECTED ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_2__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC11(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    SYSTEMTIME st;
    DateInstance *date;
    jsstr_t *date_str;
    int len;

    FUNC2("\n");

    if(!(date = FUNC4(jsthis)))
        return FUNC10(ctx, JS_E_DATE_EXPECTED, NULL);

    if(FUNC5(date->time)) {
        if(r)
            *r = FUNC8(FUNC7());
        return S_OK;
    }

    st = FUNC3(FUNC9(date->time, date));

    if(st.wYear<1601 || st.wYear>9999)
        return FUNC0(ctx, jsthis, flags, argc, argv, r);

    if(r) {
        WCHAR *ptr;

        len = FUNC1(ctx->lcid, 0, &st, NULL, NULL, 0);
        date_str = FUNC6(len-1, &ptr);
        if(!date_str)
            return E_OUTOFMEMORY;
        FUNC1(ctx->lcid, 0, &st, NULL, ptr, len);

        *r = FUNC8(date_str);
    }
    return S_OK;
}