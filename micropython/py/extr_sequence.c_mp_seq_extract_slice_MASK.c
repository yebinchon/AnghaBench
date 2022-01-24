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
typedef  int /*<<< orphan*/  mp_obj_t ;
typedef  scalar_t__ mp_int_t ;
struct TYPE_3__ {scalar_t__ start; scalar_t__ stop; scalar_t__ step; } ;
typedef  TYPE_1__ mp_bound_slice_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

mp_obj_t FUNC2(size_t len, const mp_obj_t *seq, mp_bound_slice_t *indexes) {
    (void)len; // TODO can we remove len from the arg list?

    mp_int_t start = indexes->start, stop = indexes->stop;
    mp_int_t step = indexes->step;

    mp_obj_t res = FUNC1(0, NULL);

    if (step < 0) {
        while (start >= stop) {
            FUNC0(res, seq[start]);
            start += step;
        }
    } else {
        while (start < stop) {
            FUNC0(res, seq[start]);
            start += step;
        }
    }
    return res;
}