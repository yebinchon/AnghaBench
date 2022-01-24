#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  is_static; } ;
typedef  TYPE_1__ pyb_uart_obj_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__**) ; 
 TYPE_1__** FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pyb_uart_obj_all ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(void) {
    for (int i = 0; i < FUNC0(FUNC1(pyb_uart_obj_all)); i++) {
        pyb_uart_obj_t *uart_obj = FUNC1(pyb_uart_obj_all)[i];
        if (uart_obj != NULL && !uart_obj->is_static) {
            FUNC2(uart_obj);
            FUNC1(pyb_uart_obj_all)[i] = NULL;
        }
    }
}