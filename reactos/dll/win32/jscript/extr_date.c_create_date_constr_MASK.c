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
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DateConstr_info ; 
 int /*<<< orphan*/  DateConstr_value ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PROPF_CONSTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,double,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

HRESULT FUNC4(script_ctx_t *ctx, jsdisp_t *object_prototype, jsdisp_t **ret)
{
    jsdisp_t *date;
    HRESULT hres;

    static const WCHAR DateW[] = {'D','a','t','e',0};

    hres = FUNC2(ctx, object_prototype, 0.0, &date);
    if(FUNC0(hres))
        return hres;

    hres = FUNC1(ctx, DateConstr_value, DateW, &DateConstr_info,
            PROPF_CONSTR|7, date, ret);

    FUNC3(date);
    return hres;
}