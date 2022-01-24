#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* hw_sector_size_filename; struct TYPE_4__* size_filename; struct TYPE_4__* name; } ;
typedef  TYPE_1__ BTRFS_DISK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static inline void FUNC1(BTRFS_DISK *d) {
    FUNC0(d->name);
    FUNC0(d->size_filename);
    FUNC0(d->hw_sector_size_filename);
    FUNC0(d);
}