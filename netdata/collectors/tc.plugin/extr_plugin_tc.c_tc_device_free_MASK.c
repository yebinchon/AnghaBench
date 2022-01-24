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
struct tc_device {struct tc_device* family; struct tc_device* name; struct tc_device* id; scalar_t__ classes; struct tc_device* prev; struct tc_device* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct tc_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct tc_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct tc_device*,scalar_t__) ; 
 struct tc_device* FUNC3 (struct tc_device*) ; 
 struct tc_device* tc_device_root ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static inline void FUNC5(struct tc_device *n)
{
    if(n->next) n->next->prev = n->prev;
    if(n->prev) n->prev->next = n->next;
    if(tc_device_root == n) {
        if(n->next) tc_device_root = n->next;
        else tc_device_root = n->prev;
    }

    if(FUNC4(FUNC3(n) != n))
        FUNC0("plugin_tc: INTERNAL ERROR: removing device '%s' removed a different device.", n->id);

    while(n->classes) FUNC2(n, n->classes);

    FUNC1(n->id);
    FUNC1(n->name);
    FUNC1(n->family);
    FUNC1(n);
}