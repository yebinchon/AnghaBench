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
typedef  int /*<<< orphan*/  property_definition_type_t ;
struct TYPE_4__ {int /*<<< orphan*/ * next; int /*<<< orphan*/ * value; int /*<<< orphan*/ * name; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ property_definition_t ;
typedef  int /*<<< orphan*/  parser_ctx_t ;
typedef  int /*<<< orphan*/  literal_t ;
typedef  int /*<<< orphan*/  expression_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static property_definition_t *FUNC1(parser_ctx_t *ctx, property_definition_type_t type,
                                                      literal_t *name, expression_t *value)
{
    property_definition_t *ret = FUNC0(ctx, sizeof(property_definition_t));

    ret->type = type;
    ret->name = name;
    ret->value = value;
    ret->next = NULL;

    return ret;
}