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
struct netdev {struct netdev* next; scalar_t__ updated; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ netdev_added ; 
 scalar_t__ netdev_found ; 
 int /*<<< orphan*/  FUNC1 (struct netdev*) ; 
 struct netdev* netdev_last_used ; 
 struct netdev* netdev_root ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3() {
    if(FUNC0(netdev_found == netdev_added)) return;

    netdev_added = 0;
    struct netdev *d = netdev_root, *last = NULL;
    while(d) {
        if(FUNC2(!d->updated)) {
            // info("Removing network device '%s', linked after '%s'", d->name, last?last->name:"ROOT");

            if(netdev_last_used == d)
                netdev_last_used = last;

            struct netdev *t = d;

            if(d == netdev_root || !last)
                netdev_root = d = d->next;

            else
                last->next = d = d->next;

            t->next = NULL;
            FUNC1(t);
        }
        else {
            netdev_added++;
            last = d;
            d->updated = 0;
            d = d->next;
        }
    }
}