#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* next; } ;
struct TYPE_6__ {struct TYPE_6__* id; struct TYPE_6__* label; TYPE_2__* disks; struct TYPE_6__* allocation_system_total_bytes_filename; struct TYPE_6__* allocation_system_bytes_used_filename; struct TYPE_6__* allocation_metadata_total_bytes_filename; struct TYPE_6__* allocation_metadata_bytes_used_filename; struct TYPE_6__* allocation_data_total_bytes_filename; struct TYPE_6__* allocation_data_bytes_used_filename; scalar_t__ st_allocation_system; scalar_t__ st_allocation_metadata; scalar_t__ st_allocation_data; scalar_t__ st_allocation_disks; } ;
typedef  TYPE_1__ BTRFS_NODE ;
typedef  TYPE_2__ BTRFS_DISK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static inline void FUNC3(BTRFS_NODE *node) {
    // info("BTRFS: destroying '%s'", node->id);

    if(node->st_allocation_disks)
        FUNC2(node->st_allocation_disks);

    if(node->st_allocation_data)
        FUNC2(node->st_allocation_data);

    if(node->st_allocation_metadata)
        FUNC2(node->st_allocation_metadata);

    if(node->st_allocation_system)
        FUNC2(node->st_allocation_system);

    FUNC1(node->allocation_data_bytes_used_filename);
    FUNC1(node->allocation_data_total_bytes_filename);

    FUNC1(node->allocation_metadata_bytes_used_filename);
    FUNC1(node->allocation_metadata_total_bytes_filename);

    FUNC1(node->allocation_system_bytes_used_filename);
    FUNC1(node->allocation_system_total_bytes_filename);

    while(node->disks) {
        BTRFS_DISK *d = node->disks;
        node->disks = node->disks->next;
        FUNC0(d);
    }

    FUNC1(node->label);
    FUNC1(node->id);
    FUNC1(node);
}