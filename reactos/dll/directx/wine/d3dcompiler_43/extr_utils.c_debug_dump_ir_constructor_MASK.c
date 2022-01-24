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
struct TYPE_2__ {int /*<<< orphan*/  data_type; } ;
struct hlsl_ir_constructor {unsigned int args_count; int /*<<< orphan*/ * args; TYPE_1__ node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(const struct hlsl_ir_constructor *constructor)
{
    unsigned int i;

    FUNC0("%s (", FUNC2(constructor->node.data_type));
    for (i = 0; i < constructor->args_count; ++i)
    {
        FUNC1(constructor->args[i]);
        FUNC0(" ");
    }
    FUNC0(")");
}