#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vdisp_t ;
struct TYPE_12__ {int /*<<< orphan*/  lcid; } ;
typedef  TYPE_1__ script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  WORD ;
typedef  char WCHAR ;
struct TYPE_14__ {int /*<<< orphan*/  time; } ;
struct TYPE_13__ {int wYear; } ;
typedef  TYPE_2__ SYSTEMTIME ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_3__ DateInstance ;

/* Variables and functions */
 int /*<<< orphan*/  DATE_LONGDATE ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  JS_E_DATE_EXPECTED ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_2__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int,char**) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC12(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    SYSTEMTIME st;
    DateInstance *date;
    jsstr_t *date_str;
    int date_len, time_len;

    FUNC2("\n");

    if(!(date = FUNC4(jsthis)))
        return FUNC11(ctx, JS_E_DATE_EXPECTED, NULL);

    if(FUNC6(date->time)) {
        if(r)
            *r = FUNC9(FUNC8());
        return S_OK;
    }

    st = FUNC3(FUNC10(date->time, date));

    if(st.wYear<1601 || st.wYear>9999)
        return FUNC5(date, r);

    if(r) {
        WCHAR *ptr;

        date_len = FUNC0(ctx->lcid, DATE_LONGDATE, &st, NULL, NULL, 0);
        time_len = FUNC1(ctx->lcid, 0, &st, NULL, NULL, 0);

        date_str = FUNC7(date_len+time_len-1, &ptr);
        if(!date_str)
            return E_OUTOFMEMORY;

        FUNC0(ctx->lcid, DATE_LONGDATE, &st, NULL, ptr, date_len);
        FUNC1(ctx->lcid, 0, &st, NULL, ptr+date_len, time_len);
        ptr[date_len-1] = ' ';

        *r = FUNC9(date_str);
    }
    return S_OK;
}