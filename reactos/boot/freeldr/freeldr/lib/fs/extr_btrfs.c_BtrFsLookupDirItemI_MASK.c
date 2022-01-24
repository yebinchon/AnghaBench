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
typedef  int /*<<< orphan*/  u64 ;
struct btrfs_root_item {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_disk_key {scalar_t__ offset; int /*<<< orphan*/  type; int /*<<< orphan*/  objectid; } ;
struct btrfs_dir_item {int name_len; scalar_t__ type; } ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_DIR_INDEX_KEY ; 
 scalar_t__ BTRFS_FT_XATTR ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_root_item const*,struct btrfs_disk_key*,struct btrfs_path*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char const*,int,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 
 scalar_t__ FUNC3 (struct btrfs_disk_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_disk_key*,struct btrfs_path*) ; 
 scalar_t__ FUNC7 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_path*) ; 
 scalar_t__ FUNC9 (struct btrfs_dir_item*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static BOOLEAN FUNC10(const struct btrfs_root_item *root, u64 dir_haystack, const char *name, int name_len,
                                   struct btrfs_dir_item *ret_item)
{
    struct btrfs_path path;
    struct btrfs_disk_key key;
    struct btrfs_dir_item *item;
    char *name_buf;
    BOOLEAN result = FALSE;

    key.objectid = dir_haystack;
    key.type = BTRFS_DIR_INDEX_KEY;
    key.offset = 0;
    FUNC5(&path);

    FUNC0(root, &key, &path);

    if (FUNC3(&key, FUNC8(&path)))
        goto cleanup;

    do
    {
        item = (struct btrfs_dir_item *) FUNC7(&path);
        // TRACE("slot: %ld, KEY (%llu %u %llu) %.*s\n",
        //         path.slots[0], path.item.key.objectid, path.item.key.type,
        //         path.item.key.offset, item->name_len, (char *)item + sizeof(*item));

        if (FUNC9(item, 0, sizeof(*item) + item->name_len))
            continue;
        if (item->type == BTRFS_FT_XATTR)
            continue;

        name_buf = (char *) item + sizeof(*item);
        FUNC1("Compare names %.*s and %.*s\n", name_len, name, item->name_len, name_buf);

        if (name_len == item->name_len && FUNC2(name, name_buf, name_len) == 0)
        {
            *ret_item = *item;
            result = TRUE;
            goto cleanup;
        }

    } while (!FUNC6(&key, &path));

cleanup:
    FUNC4(&path);
    return result;
}