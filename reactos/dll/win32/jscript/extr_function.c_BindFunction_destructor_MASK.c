#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int argc; int /*<<< orphan*/  this; TYPE_1__* target; int /*<<< orphan*/ * args; } ;
struct TYPE_4__ {int /*<<< orphan*/  dispex; } ;
typedef  int /*<<< orphan*/  FunctionInstance ;
typedef  TYPE_2__ BindFunction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(FunctionInstance *func)
{
    BindFunction *function = (BindFunction*)func;
    unsigned i;

    FUNC1("%p\n", function);

    for(i = 0; i < function->argc; i++)
        FUNC3(function->args[i]);
    FUNC2(&function->target->dispex);
    FUNC0(function->this);
}