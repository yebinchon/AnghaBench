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
struct TYPE_2__ {scalar_t__ index; int /*<<< orphan*/  iterable; } ;
typedef  TYPE_1__ repeat_iterator_t ;
typedef  scalar_t__ mp_obj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  MP_OBJ_SENTINEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static mp_obj_t FUNC4(mp_obj_t iter_in) {
    repeat_iterator_t *iter = (repeat_iterator_t *)iter_in;
    iter->index++;
    if (iter->index >= FUNC1(FUNC2(iter->iterable))) {
        iter->index = 0;
    }
    return FUNC3(iter->iterable, FUNC0(iter->index), MP_OBJ_SENTINEL);
}