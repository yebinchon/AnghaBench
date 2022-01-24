#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct TYPE_7__ {int entries; int /*<<< orphan*/  name; scalar_t__ update_every; } ;
typedef  TYPE_1__ RRDSET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 size_t FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static inline size_t FUNC6(RRDSET *st, time_t t) {
    size_t ret = 0;

    if(t >= FUNC3(st)) {
        // the requested time is after the last entry we have
        ret = FUNC4(st);
    }
    else {
        if(t <= FUNC1(st)) {
            // the requested time is before the first entry we have
            ret = FUNC2(st);
        }
        else {
            if(FUNC4(st) >= ((FUNC3(st) - t) / (size_t)(st->update_every)))
                ret = FUNC4(st) - ((FUNC3(st) - t) / (size_t)(st->update_every));
            else
                ret = FUNC4(st) - ((FUNC3(st) - t) / (size_t)(st->update_every)) + (unsigned long)st->entries;
        }
    }

    if(FUNC5(ret >= (size_t)st->entries)) {
        FUNC0("INTERNAL ERROR: rrdset_time2slot() on %s returns values outside entries", st->name);
        ret = (size_t)(st->entries - 1);
    }

    return ret;
}