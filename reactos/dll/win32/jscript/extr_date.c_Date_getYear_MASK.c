#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vdisp_t ;
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_4__ {int /*<<< orphan*/  time; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ DateInstance ;
typedef  int DOUBLE ;

/* Variables and functions */
 int /*<<< orphan*/  JS_E_DATE_EXPECTED ; 
 int NAN ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static HRESULT FUNC7(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    DateInstance *date;
    DOUBLE t, year;

    FUNC0("\n");

    if(!(date = FUNC1(jsthis)))
        return FUNC5(ctx, JS_E_DATE_EXPECTED, NULL);

    t = FUNC4(date->time, date);
    if(FUNC2(t)) {
        if(r)
            *r = FUNC3(NAN);
        return S_OK;
    }

    year = FUNC6(t);
    if(r)
        *r = FUNC3((1900<=year && year<2000)?year-1900:year);
    return S_OK;
}