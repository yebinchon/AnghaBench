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
struct netdev {scalar_t__ filename_speed; scalar_t__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  netdev_added ; 
 int /*<<< orphan*/  FUNC1 (struct netdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct netdev*) ; 

__attribute__((used)) static void FUNC3(struct netdev *d) {
    FUNC1(d);
    FUNC2(d);

    FUNC0((void *)d->name);
    FUNC0((void *)d->filename_speed);
    FUNC0((void *)d);
    netdev_added--;
}