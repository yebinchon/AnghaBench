#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  script_ctx_t ;
struct TYPE_5__ {int /*<<< orphan*/  disp; int /*<<< orphan*/  id; } ;
struct TYPE_6__ {int /*<<< orphan*/  hres; int /*<<< orphan*/  off; TYPE_1__ idref; } ;
struct TYPE_7__ {int type; TYPE_2__ u; } ;
typedef  TYPE_3__ exprval_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
#define  EXPRVAL_IDREF 131 
#define  EXPRVAL_INVALID 130 
#define  EXPRVAL_JSVAL 129 
#define  EXPRVAL_STACK_REF 128 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC7(script_ctx_t *ctx, exprval_t *val)
{
    HRESULT hres;

    switch(val->type) {
    case EXPRVAL_JSVAL:
        FUNC2(0);
    case EXPRVAL_IDREF:
        hres = FUNC6(ctx, FUNC3(val->u.idref.disp));
        if(FUNC1(hres))
            hres = FUNC6(ctx, FUNC4(val->u.idref.id));
        else
            FUNC0(val->u.idref.disp);
        return hres;
    case EXPRVAL_STACK_REF:
        hres = FUNC6(ctx, FUNC4(val->u.off));
        if(FUNC1(hres))
            hres = FUNC6(ctx, FUNC5());
        return hres;
    case EXPRVAL_INVALID:
        hres = FUNC6(ctx, FUNC5());
        if(FUNC1(hres))
            hres = FUNC6(ctx, FUNC4(val->u.hres));
        return hres;
    }

    FUNC2(0);
    return E_FAIL;
}