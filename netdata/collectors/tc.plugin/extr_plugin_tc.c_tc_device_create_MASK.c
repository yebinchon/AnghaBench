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
struct tc_device {char enabled; struct tc_device* prev; struct tc_device* next; int /*<<< orphan*/  id; int /*<<< orphan*/  classes_index; int /*<<< orphan*/  hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_TC_LOOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct tc_device* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  tc_class_compare ; 
 struct tc_device* FUNC6 (struct tc_device*) ; 
 struct tc_device* FUNC7 (char*,int /*<<< orphan*/ ) ; 
 struct tc_device* tc_device_root ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static inline struct tc_device *FUNC9(char *id)
{
    struct tc_device *d = FUNC7(id, 0);

    if(!d) {
        FUNC2(D_TC_LOOP, "TC: Creating device '%s'", id);

        d = FUNC1(1, sizeof(struct tc_device));

        d->id = FUNC5(id);
        d->hash = FUNC4(d->id);
        d->enabled = (char)-1;

        FUNC0(&d->classes_index, tc_class_compare);
        if(FUNC8(FUNC6(d) != d))
            FUNC3("plugin_tc: INTERNAL ERROR: removing device '%s' removed a different device.", d->id);

        if(!tc_device_root) {
            tc_device_root = d;
        }
        else {
            d->next = tc_device_root;
            tc_device_root->prev = d;
            tc_device_root = d;
        }
    }

    return(d);
}