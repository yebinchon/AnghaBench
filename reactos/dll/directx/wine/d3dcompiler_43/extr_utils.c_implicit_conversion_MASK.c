#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct source_location {int dummy; } ;
struct hlsl_type {int dummy; } ;
struct hlsl_ir_node {int /*<<< orphan*/  data_type; } ;
struct TYPE_2__ {struct hlsl_ir_node node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct hlsl_type*) ; 
 int /*<<< orphan*/  FUNC2 (struct hlsl_type*) ; 
 TYPE_1__* FUNC3 (struct hlsl_ir_node*,struct hlsl_type*,struct source_location*) ; 

__attribute__((used)) static struct hlsl_ir_node *FUNC4(struct hlsl_ir_node *node, struct hlsl_type *type,
        struct source_location *loc)
{
    if (FUNC1(node->data_type, type))
        return node;
    FUNC0("Implicit conversion of expression to %s\n", FUNC2(type));
    return &FUNC3(node, type, loc)->node;
}