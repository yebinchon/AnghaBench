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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int size; char const* func; int line; int /*<<< orphan*/ * last_value; int /*<<< orphan*/ * addr; int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ traced_variable_t ;

/* Variables and functions */
 int NUM_TRACED_VARIABLES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* traced_variables ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

void FUNC4(const char* func, int line) {
    for (int i = 0; i < NUM_TRACED_VARIABLES; i++) {
        traced_variable_t* t = &traced_variables[i];
        if (t->addr != NULL && t->name != NULL) {
            if (FUNC0(t->last_value, t->addr, t->size) != 0) {
#if defined(__AVR__)
                xprintf("Traced variable \"%S\" has been modified\n", t->name);
                xprintf("Between %S:%d\n", t->func, t->line);
                xprintf("And %S:%d\n", func, line);

#else
                FUNC3("Traced variable \"%s\" has been modified\n", t->name);
                FUNC3("Between %s:%d\n", t->func, t->line);
                FUNC3("And %s:%d\n", func, line);
#endif
                FUNC3("Previous value ");
                for (int j = 0; j < t->size; j++) {
                    FUNC2(t->last_value[j]);
                }
                FUNC3("\nNew value ");
                uint8_t* addr = (uint8_t*)(t->addr);
                for (int j = 0; j < t->size; j++) {
                    FUNC2(addr[j]);
                }
                FUNC3("\n");
                FUNC1(t->last_value, addr, t->size);
            }
        }

        t->func = func;
        t->line = line;
    }
}