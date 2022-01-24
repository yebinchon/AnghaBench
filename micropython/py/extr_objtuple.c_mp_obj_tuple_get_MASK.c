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
struct TYPE_3__ {size_t len; int /*<<< orphan*/ * items; } ;
typedef  TYPE_1__ mp_obj_tuple_t ;
typedef  int /*<<< orphan*/  mp_obj_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(mp_obj_t self_in, size_t *len, mp_obj_t **items) {
    FUNC1(FUNC2(self_in));
    mp_obj_tuple_t *self = FUNC0(self_in);
    *len = self->len;
    *items = &self->items[0];
}