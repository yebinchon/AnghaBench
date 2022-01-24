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
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  char WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  dispex; } ;
typedef  TYPE_1__ StringInstance ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PROPF_CONSTR ; 
 int /*<<< orphan*/  StringConstr_info ; 
 int /*<<< orphan*/  StringConstr_value ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__**) ; 

HRESULT FUNC5(script_ctx_t *ctx, jsdisp_t *object_prototype, jsdisp_t **ret)
{
    StringInstance *string;
    HRESULT hres;

    static const WCHAR StringW[] = {'S','t','r','i','n','g',0};

    hres = FUNC4(ctx, object_prototype, FUNC3(), &string);
    if(FUNC0(hres))
        return hres;

    hres = FUNC1(ctx, StringConstr_value, StringW, &StringConstr_info,
            PROPF_CONSTR|1, &string->dispex, ret);

    FUNC2(&string->dispex);
    return hres;
}