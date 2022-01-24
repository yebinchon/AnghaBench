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
struct netdev {struct netdev* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ netdev_pending_renames ; 
 int /*<<< orphan*/  FUNC2 (struct netdev*) ; 
 int /*<<< orphan*/  netdev_rename_mutex ; 
 struct netdev* netdev_root ; 

__attribute__((used)) static inline void FUNC3(void) {
    FUNC0(&netdev_rename_mutex);

    struct netdev *d;
    for(d = netdev_root; d ; d = d->next)
        FUNC2(d);

    netdev_pending_renames = 0;
    FUNC1(&netdev_rename_mutex);
}