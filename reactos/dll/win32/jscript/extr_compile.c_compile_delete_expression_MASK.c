#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_5__* expression; } ;
typedef  TYPE_1__ unary_expression_t ;
struct TYPE_8__ {int /*<<< orphan*/  identifier; TYPE_5__* expression; } ;
typedef  TYPE_2__ member_expression_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
struct TYPE_9__ {int /*<<< orphan*/  identifier; } ;
typedef  TYPE_3__ identifier_expression_t ;
typedef  int /*<<< orphan*/  compiler_ctx_t ;
struct TYPE_10__ {TYPE_5__* expression2; TYPE_5__* expression1; } ;
typedef  TYPE_4__ binary_expression_t ;
typedef  float WCHAR ;
struct TYPE_11__ {int type; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
#define  EXPR_ARRAY 130 
#define  EXPR_IDENT 129 
#define  EXPR_MEMBER 128 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JS_E_INVALID_DELETE ; 
 int /*<<< orphan*/  OP_delete ; 
 int /*<<< orphan*/  OP_delete_ident ; 
 int /*<<< orphan*/  OP_str ; 
 int /*<<< orphan*/  OP_throw_type ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float const*) ; 

__attribute__((used)) static HRESULT FUNC8(compiler_ctx_t *ctx, unary_expression_t *expr)
{
    HRESULT hres;

    switch(expr->expression->type) {
    case EXPR_ARRAY: {
        binary_expression_t *array_expr = (binary_expression_t*)expr->expression;

        hres = FUNC2(ctx, array_expr->expression1, TRUE);
        if(FUNC0(hres))
            return hres;

        hres = FUNC2(ctx, array_expr->expression2, TRUE);
        if(FUNC0(hres))
            return hres;

        if(!FUNC4(ctx, OP_delete))
            return E_OUTOFMEMORY;
        break;
    }
    case EXPR_MEMBER: {
        member_expression_t *member_expr = (member_expression_t*)expr->expression;
        jsstr_t *jsstr;

        hres = FUNC2(ctx, member_expr->expression, TRUE);
        if(FUNC0(hres))
            return hres;

        /* FIXME: Potential optimization */
        jsstr = FUNC3(ctx, member_expr->identifier);
        if(!jsstr)
            return E_OUTOFMEMORY;

        hres = FUNC6(ctx, OP_str, jsstr);
        if(FUNC0(hres))
            return hres;

        if(!FUNC4(ctx, OP_delete))
            return E_OUTOFMEMORY;
        break;
    }
    case EXPR_IDENT:
        return FUNC5(ctx, OP_delete_ident, ((identifier_expression_t*)expr->expression)->identifier);
    default: {
        static const WCHAR fixmeW[] = {'F','I','X','M','E',0};

        FUNC1("invalid delete, unimplemented exception message\n");

        hres = FUNC2(ctx, expr->expression, TRUE);
        if(FUNC0(hres))
            return hres;

        return FUNC7(ctx, OP_throw_type, JS_E_INVALID_DELETE, fixmeW);
    }
    }

    return S_OK;
}