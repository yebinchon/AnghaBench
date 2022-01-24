#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  script_ctx_t ;
struct TYPE_6__ {int /*<<< orphan*/  disp; int /*<<< orphan*/  id; } ;
struct TYPE_7__ {TYPE_1__ idref; } ;
struct TYPE_8__ {int type; TYPE_2__ u; } ;
typedef  TYPE_3__ exprval_t ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
#define  EXPRVAL_IDREF 130 
#define  EXPRVAL_INVALID 129 
#define  EXPRVAL_STACK_REF 128 
 int /*<<< orphan*/  E_NOTIMPL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC11(script_ctx_t *ctx)
{
    const BSTR arg = FUNC7(ctx, 0);
    exprval_t exprval;
    BOOL ret;
    HRESULT hres;

    FUNC3("%s\n", FUNC4(arg));

    hres = FUNC8(ctx, arg, &exprval);
    if(FUNC0(hres))
        return hres;

    switch(exprval.type) {
    case EXPRVAL_STACK_REF:
        ret = FALSE;
        break;
    case EXPRVAL_IDREF:
        hres = FUNC5(exprval.u.idref.disp, exprval.u.idref.id, &ret);
        FUNC2(exprval.u.idref.disp);
        if(FUNC0(hres))
            return hres;
        break;
    case EXPRVAL_INVALID:
        ret = TRUE;
        break;
    default:
        FUNC1("Unsupported exprval\n");
        FUNC6(&exprval);
        return E_NOTIMPL;
    }


    return FUNC10(ctx, FUNC9(ret));
}