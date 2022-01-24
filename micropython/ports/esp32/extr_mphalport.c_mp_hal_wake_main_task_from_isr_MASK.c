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
typedef  scalar_t__ BaseType_t ;

/* Variables and functions */
 int /*<<< orphan*/  mp_main_task_handle ; 
 scalar_t__ pdFALSE ; 
 scalar_t__ pdTRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 

void FUNC2(void) {
    BaseType_t xHigherPriorityTaskWoken = pdFALSE;
    FUNC1(mp_main_task_handle, &xHigherPriorityTaskWoken);
    if (xHigherPriorityTaskWoken == pdTRUE) {
        FUNC0();
    }
}