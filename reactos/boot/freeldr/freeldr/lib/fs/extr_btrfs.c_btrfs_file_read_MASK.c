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
typedef  scalar_t__ u64 ;
struct btrfs_root_item {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_file_extent_item {scalar_t__ type; } ;
struct btrfs_disk_key {scalar_t__ offset; int /*<<< orphan*/  type; scalar_t__ objectid; } ;
struct TYPE_4__ {scalar_t__ objectid; scalar_t__ type; scalar_t__ offset; } ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_EXTENT_DATA_KEY ; 
 scalar_t__ BTRFS_FILE_EXTENT_INLINE ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_root_item const*,struct btrfs_disk_key*,struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ READ_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (struct btrfs_disk_key*,TYPE_1__*) ; 
 scalar_t__ FUNC4 (struct btrfs_disk_key*,TYPE_1__*) ; 
 scalar_t__ FUNC5 (struct btrfs_path*,struct btrfs_file_extent_item*,scalar_t__,scalar_t__,char*) ; 
 scalar_t__ FUNC6 (struct btrfs_path*,struct btrfs_file_extent_item*,scalar_t__,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_path*) ; 
 int FUNC9 (struct btrfs_disk_key*,struct btrfs_path*) ; 
 scalar_t__ FUNC10 (struct btrfs_path*) ; 
 TYPE_1__* FUNC11 (struct btrfs_path*) ; 
 scalar_t__ FUNC12 (struct btrfs_disk_key*,struct btrfs_path*) ; 

__attribute__((used)) static u64 FUNC13(const struct btrfs_root_item *root, u64 inr, u64 offset, u64 size, char *buf)
{
    struct btrfs_path path;
    struct btrfs_disk_key key;
    struct btrfs_file_extent_item *extent;
    int res = 0;
    u64 rd, seek_pointer = READ_ERROR, offset_in_extent;
    BOOLEAN find_res;

    FUNC2("btrfs_file_read inr=%llu offset=%llu size=%llu\n", inr, offset, size);

    key.objectid = inr;
    key.type = BTRFS_EXTENT_DATA_KEY;
    key.offset = offset;
    FUNC8(&path);

    find_res = FUNC0(root, &key, &path);

    /* if we found greater key, switch to the previous one */
    if (!find_res && FUNC3(&key, FUNC11(&path)) < 0)
    {
        if (FUNC12(&key, &path))
            goto out;

    } else if (FUNC4(&key, FUNC11(&path)))
    {
        goto out;
    }

    seek_pointer = offset;

    do
    {
        FUNC2("Current extent: (%llu %u %llu) \n",
              FUNC11(&path)->objectid,
              FUNC11(&path)->type,
              FUNC11(&path)->offset);

        extent = (struct btrfs_file_extent_item *) FUNC10(&path);

        offset_in_extent = seek_pointer;
        /* check if we need clean extent offset when switching to the next extent */
        if ((seek_pointer) >= FUNC11(&path)->offset)
            offset_in_extent -= FUNC11(&path)->offset;

        if (extent->type == BTRFS_FILE_EXTENT_INLINE)
        {
            rd = FUNC5(&path, extent, offset_in_extent, size, buf);
        }
        else
        {
            rd = FUNC6(&path, extent, offset_in_extent, size, buf);
        }

        if (rd == READ_ERROR)
        {
            FUNC1("Error while reading extent\n");
            seek_pointer = READ_ERROR;
            goto out;
        }

        buf += rd;
        seek_pointer += rd;
        size -= rd;
        FUNC2("file_read size=%llu rd=%llu seek_pointer=%llu\n", size, rd, seek_pointer);

        if (!size)
            break;
    } while (!(res = FUNC9(&key, &path)));

    if (res)
    {
        seek_pointer = READ_ERROR;
        goto out;
    }

    seek_pointer -= offset;
out:
    FUNC7(&path);
    return seek_pointer;
}