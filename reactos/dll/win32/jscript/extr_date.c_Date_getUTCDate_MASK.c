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
typedef  int /*<<< orphan*/  vdisp_t ;
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_3__ {int /*<<< orphan*/  time; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ DateInstance ;

/* Variables and functions */
 int /*<<< orphan*/  JS_E_DATE_EXPECTED ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC5(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    DateInstance *date;

    FUNC0("\n");

    if(!(date = FUNC2(jsthis)))
        return FUNC4(ctx, JS_E_DATE_EXPECTED, NULL);

    if(r)
        *r = FUNC3(FUNC1(date->time));
    return S_OK;
}