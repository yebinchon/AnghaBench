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
struct TYPE_2__ {void** dir; } ;
struct lfs1_disk_entry {TYPE_1__ u; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 

__attribute__((used)) static void FUNC1(struct lfs1_disk_entry *d) {
    d->u.dir[0] = FUNC0(d->u.dir[0]);
    d->u.dir[1] = FUNC0(d->u.dir[1]);
}