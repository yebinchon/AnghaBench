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
struct tc_device {int name_updated; int /*<<< orphan*/ * name; int /*<<< orphan*/ * id; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_TC_LOOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static inline void FUNC6(struct tc_device *d, char *name) {
    if(FUNC5(!name || !*name)) return;

    if(d->name) {
        if(!FUNC3(d->name, name)) return;
        FUNC1(d->name);
        d->name = NULL;
    }

    if(FUNC2(name && *name && FUNC3(d->id, name) != 0)) {
        FUNC0(D_TC_LOOP, "TC: Setting device '%s' name to '%s'", d->id, name);
        d->name = FUNC4(name);
        d->name_updated = 1;
    }
}