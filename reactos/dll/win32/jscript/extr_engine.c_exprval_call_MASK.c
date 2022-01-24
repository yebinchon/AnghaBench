#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * stack; } ;
typedef  TYPE_3__ script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
struct TYPE_9__ {int /*<<< orphan*/  id; int /*<<< orphan*/  disp; } ;
struct TYPE_10__ {size_t off; TYPE_1__ idref; } ;
struct TYPE_12__ {int type; TYPE_2__ u; } ;
typedef  TYPE_4__ exprval_t ;
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
#define  EXPRVAL_IDREF 129 
#define  EXPRVAL_STACK_REF 128 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC7(script_ctx_t *ctx, exprval_t *ref, WORD flags, unsigned argc, jsval_t *argv, jsval_t *r)
{
    switch(ref->type) {
    case EXPRVAL_STACK_REF: {
        jsval_t v = ctx->stack[ref->u.off];

        if(!FUNC6(v)) {
            FUNC0("invoke %s\n", FUNC2(v));
            return E_FAIL;
        }

        return FUNC4(ctx, FUNC5(v), NULL, flags, argc, argv, r);
    }
    case EXPRVAL_IDREF:
        return FUNC3(ctx, ref->u.idref.disp, ref->u.idref.id, flags, argc, argv, r);
    default:
        FUNC1(0);
        return E_FAIL;
    }
}