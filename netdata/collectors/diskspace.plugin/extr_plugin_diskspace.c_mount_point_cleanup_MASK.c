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
struct mount_point_metadata {int updated; int /*<<< orphan*/  st_inodes; int /*<<< orphan*/  st_space; int /*<<< orphan*/ * rd_inodes_reserved; int /*<<< orphan*/ * rd_inodes_used; int /*<<< orphan*/ * rd_inodes_avail; int /*<<< orphan*/ * rd_space_reserved; int /*<<< orphan*/ * rd_space_used; int /*<<< orphan*/ * rd_space_avail; scalar_t__ shown_error; scalar_t__ collected; } ;

/* Variables and functions */
 scalar_t__ cleanup_mount_points ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(void *entry, void *data) {
    (void)data;

    struct mount_point_metadata *mp = (struct mount_point_metadata *)entry;
    if(!mp) return 0;

    if(FUNC0(mp->updated)) {
        mp->updated = 0;
        return 0;
    }

    if(FUNC0(cleanup_mount_points && mp->collected)) {
        mp->collected = 0;
        mp->updated = 0;
        mp->shown_error = 0;

        mp->rd_space_avail = NULL;
        mp->rd_space_used = NULL;
        mp->rd_space_reserved = NULL;

        mp->rd_inodes_avail = NULL;
        mp->rd_inodes_used = NULL;
        mp->rd_inodes_reserved = NULL;

        FUNC1(mp->st_space);
        FUNC1(mp->st_inodes);
    }

    return 0;
}