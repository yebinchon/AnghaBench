#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct btrfs_path {int /*<<< orphan*/ * slots; } ;
struct btrfs_disk_key {int dummy; } ;
struct TYPE_3__ {scalar_t__ objectid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btrfs_disk_key*,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (struct btrfs_path*) ; 

__attribute__((used)) static int FUNC2(struct btrfs_disk_key *key,
                     struct btrfs_path *path)
{
    if (!path->slots[0])
        return 1;
    --path->slots[0];
    if (FUNC1(path)->objectid && !FUNC0(key, FUNC1(path)))
        return 0;
    else
        return 1;
}