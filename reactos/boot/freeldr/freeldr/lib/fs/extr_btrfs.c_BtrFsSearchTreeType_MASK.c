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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct btrfs_root_item {int /*<<< orphan*/  level; int /*<<< orphan*/  bytenr; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_disk_key {scalar_t__ offset; int /*<<< orphan*/  type; int /*<<< orphan*/  objectid; } ;
struct TYPE_3__ {scalar_t__ objectid; } ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct btrfs_disk_key*,struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_disk_key*,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (struct btrfs_path*) ; 

__attribute__((used)) static inline BOOLEAN
FUNC3(const struct btrfs_root_item *root, u64 objectid, u8 type, struct btrfs_path *path)
{
    struct btrfs_disk_key key;

    key.objectid = objectid;
    key.type = type;
    key.offset = 0;

    FUNC0(root->bytenr, root->level, &key, path);

    if (FUNC2(path)->objectid && !FUNC1(&key, FUNC2(path)))
        return TRUE;
    else
        return FALSE;
}