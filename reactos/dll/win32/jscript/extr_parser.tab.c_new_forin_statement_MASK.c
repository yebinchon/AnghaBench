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
typedef  int /*<<< orphan*/  variable_declaration_t ;
typedef  int /*<<< orphan*/  statement_t ;
typedef  int /*<<< orphan*/  parser_ctx_t ;
struct TYPE_3__ {int /*<<< orphan*/  stat; int /*<<< orphan*/ * statement; int /*<<< orphan*/ * in_expr; int /*<<< orphan*/ * expr; int /*<<< orphan*/ * variable; } ;
typedef  TYPE_1__ forin_statement_t ;
typedef  int /*<<< orphan*/  expression_t ;

/* Variables and functions */
 int /*<<< orphan*/  STAT_FORIN ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static statement_t *FUNC1(parser_ctx_t *ctx, variable_declaration_t *variable, expression_t *expr,
        expression_t *in_expr, statement_t *statement)
{
    forin_statement_t *ret;

    ret = FUNC0(ctx, STAT_FORIN, sizeof(*ret));
    if(!ret)
        return NULL;

    ret->variable = variable;
    ret->expr = expr;
    ret->in_expr = in_expr;
    ret->statement = statement;

    return &ret->stat;
}