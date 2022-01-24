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
struct TYPE_3__ {int /*<<< orphan*/  stat; int /*<<< orphan*/ * statement; int /*<<< orphan*/ * expr; } ;
typedef  TYPE_1__ with_statement_t ;
typedef  int /*<<< orphan*/  statement_t ;
typedef  int /*<<< orphan*/  parser_ctx_t ;
typedef  int /*<<< orphan*/  expression_t ;

/* Variables and functions */
 int /*<<< orphan*/  STAT_WITH ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static statement_t *FUNC1(parser_ctx_t *ctx, expression_t *expr, statement_t *statement)
{
    with_statement_t *ret;

    ret = FUNC0(ctx, STAT_WITH, sizeof(*ret));
    if(!ret)
        return NULL;

    ret->expr = expr;
    ret->statement = statement;

    return &ret->stat;
}