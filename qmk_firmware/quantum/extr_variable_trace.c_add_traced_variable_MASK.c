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
struct TYPE_3__ {char const* name; unsigned int size; char const* func; int line; int /*<<< orphan*/ * last_value; int /*<<< orphan*/ * addr; } ;
typedef  TYPE_1__ traced_variable_t ;

/* Variables and functions */
 unsigned int MAX_VARIABLE_TRACE_SIZE ; 
 int NUM_TRACED_VARIABLES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,unsigned int) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 TYPE_1__* traced_variables ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

void FUNC4(const char* name, void* addr, unsigned size, const char* func, int line) {
    FUNC2(func, line);
    if (size > MAX_VARIABLE_TRACE_SIZE) {
#if defined(__AVR__)
        xprintf("Traced variable \"%S\" exceeds the maximum size %d\n", name, size);
#else
        FUNC3("Traced variable \"%s\" exceeds the maximum size %d\n", name, size);
#endif
        size = MAX_VARIABLE_TRACE_SIZE;
    }
    int index = -1;
    for (int i = 0; i < NUM_TRACED_VARIABLES; i++) {
        if (index == -1 && traced_variables[i].addr == NULL) {
            index = i;
        } else if (FUNC1(name, traced_variables[i].name) == 0) {
            index = i;
            break;
        }
    }

    if (index == -1) {
        FUNC3("You can only trace %d variables at the same time\n", NUM_TRACED_VARIABLES);
        return;
    }

    traced_variable_t* t = &traced_variables[index];
    t->name              = name;
    t->addr              = addr;
    t->size              = size;
    t->func              = func;
    t->line              = line;
    FUNC0(&t->last_value[0], addr, size);
}