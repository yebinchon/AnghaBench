#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct TYPE_6__ {size_t name; scalar_t__ update_every; scalar_t__ entries; } ;
typedef  TYPE_1__ RRDSET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 size_t FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static inline time_t FUNC5(RRDSET *st, size_t slot) {
    time_t ret;

    if(slot >= (size_t)st->entries) {
        FUNC0("INTERNAL ERROR: caller of rrdset_slot2time() gives invalid slot %zu", slot);
        slot = (size_t)st->entries - 1;
    }

    if(slot > FUNC3(st)) {
        ret = FUNC2(st) - (size_t)st->update_every * (FUNC3(st) - slot + (size_t)st->entries);
    }
    else {
        ret = FUNC2(st) - (size_t)st->update_every;
    }

    if(FUNC4(ret < FUNC1(st))) {
        FUNC0("INTERNAL ERROR: rrdset_slot2time() on %s returns time too far in the past", st->name);
        ret = FUNC1(st);
    }

    if(FUNC4(ret > FUNC2(st))) {
        FUNC0("INTERNAL ERROR: rrdset_slot2time() on %s returns time into the future", st->name);
        ret = FUNC2(st);
    }

    return ret;
}