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
typedef  int /*<<< orphan*/  mp_obj_type_t ;
typedef  int /*<<< orphan*/  mp_obj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/  const,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

mp_obj_t FUNC5(const mp_obj_t *items, size_t len, size_t n_args, const mp_obj_t *args) {
    mp_obj_type_t *type = FUNC3(args[0]);
    mp_obj_t value = args[1];
    size_t start = 0;
    size_t stop = len;

    if (n_args >= 3) {
        start = FUNC1(type, len, args[2], true);
        if (n_args >= 4) {
            stop = FUNC1(type, len, args[3], true);
        }
    }

    for (size_t i = start; i < stop; i++) {
        if (FUNC2(items[i], value)) {
            // Common sense says this cannot overflow small int
            return FUNC0(i);
        }
    }

    FUNC4("object not in sequence");
}