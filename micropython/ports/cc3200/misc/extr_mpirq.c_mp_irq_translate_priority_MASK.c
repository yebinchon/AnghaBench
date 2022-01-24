#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int* mp_irq_priorities ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mpexception_value_invalid_arguments ; 

uint FUNC2 (uint priority) {
    if (priority < 1 || priority > FUNC0(mp_irq_priorities)) {
        FUNC1(mpexception_value_invalid_arguments);
    }
    return mp_irq_priorities[priority - 1];
}