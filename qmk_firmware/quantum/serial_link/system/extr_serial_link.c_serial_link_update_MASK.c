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
typedef  size_t uint8_t ;
typedef  scalar_t__ systime_t ;
struct TYPE_5__ {scalar_t__* rows; } ;
typedef  TYPE_1__ matrix_object_t ;

/* Variables and functions */
 size_t MATRIX_ROWS ; 
 scalar_t__ FUNC0 (int) ; 
 TYPE_1__* FUNC1 () ; 
 int* FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__ last_matrix ; 
 scalar_t__ last_update ; 
 scalar_t__ FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 () ; 
 int serial_link_connected ; 

void FUNC10(void) {
    if (FUNC9()) {
        serial_link_connected = true;
    }

    matrix_object_t matrix;
    bool            changed = false;
    for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
        matrix.rows[i] = FUNC6(i);
        changed |= matrix.rows[i] != last_matrix.rows[i];
    }

    systime_t current_time = FUNC3();
    systime_t delta        = current_time - last_update;
    if (changed || delta > FUNC0(5000)) {
        last_update        = current_time;
        last_matrix        = matrix;
        matrix_object_t* m = FUNC1();
        for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
            m->rows[i] = matrix.rows[i];
        }
        FUNC4();
        *FUNC2() = true;
        FUNC5();
    }

    matrix_object_t* m = FUNC8(0);
    if (m) {
        FUNC7(m->rows, 0);
    }
}