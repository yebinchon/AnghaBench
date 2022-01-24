#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  statement_t ;
struct TYPE_4__ {int /*<<< orphan*/ * tail; int /*<<< orphan*/ * head; } ;
typedef  TYPE_1__ statement_list_t ;
typedef  int /*<<< orphan*/  parser_ctx_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static statement_list_t *FUNC1(parser_ctx_t *ctx, statement_t *statement)
{
    statement_list_t *ret =  FUNC0(ctx, sizeof(statement_list_t));

    ret->head = ret->tail = statement;

    return ret;
}