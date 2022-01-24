#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  identifier; int /*<<< orphan*/  expression; } ;
typedef  TYPE_1__ member_expression_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
struct TYPE_7__ {int /*<<< orphan*/  identifier; } ;
typedef  TYPE_2__ identifier_expression_t ;
struct TYPE_8__ {int type; } ;
typedef  TYPE_3__ expression_t ;
typedef  int /*<<< orphan*/  compiler_ctx_t ;
struct TYPE_9__ {int /*<<< orphan*/  expression2; int /*<<< orphan*/  expression1; } ;
typedef  TYPE_4__ binary_expression_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_UNREACHABLE ; 
#define  EXPR_ARRAY 130 
#define  EXPR_IDENT 129 
#define  EXPR_MEMBER 128 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_memberid ; 
 int /*<<< orphan*/  OP_str ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static HRESULT FUNC6(compiler_ctx_t *ctx, expression_t *expr, unsigned flags)
{
    HRESULT hres = S_OK;

    switch(expr->type) {
    case EXPR_IDENT: {
        identifier_expression_t *ident_expr = (identifier_expression_t*)expr;

        hres = FUNC3(ctx, ident_expr->identifier, flags);
        break;
    }
    case EXPR_ARRAY: {
        binary_expression_t *array_expr = (binary_expression_t*)expr;

        hres = FUNC1(ctx, array_expr->expression1, TRUE);
        if(FUNC0(hres))
            return hres;

        hres = FUNC1(ctx, array_expr->expression2, TRUE);
        if(FUNC0(hres))
            return hres;

        hres = FUNC5(ctx, OP_memberid, flags);
        break;
    }
    case EXPR_MEMBER: {
        member_expression_t *member_expr = (member_expression_t*)expr;
        jsstr_t *jsstr;

        hres = FUNC1(ctx, member_expr->expression, TRUE);
        if(FUNC0(hres))
            return hres;

        /* FIXME: Potential optimization */
        jsstr = FUNC2(ctx, member_expr->identifier);
        if(!jsstr)
            return E_OUTOFMEMORY;

        hres = FUNC4(ctx, OP_str, jsstr);
        if(FUNC0(hres))
            return hres;

        hres = FUNC5(ctx, OP_memberid, flags);
        break;
    }
    DEFAULT_UNREACHABLE;
    }

    return hres;
}