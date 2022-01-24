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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct btrfs_path {int dummy; } ;
struct btrfs_dir_item {int name_len; int data_len; } ;
struct TYPE_2__ {scalar_t__ size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char const*,int) ; 
 scalar_t__ FUNC1 (struct btrfs_path*) ; 
 TYPE_1__* FUNC2 (struct btrfs_path*) ; 
 scalar_t__ FUNC3 (struct btrfs_dir_item*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct btrfs_dir_item *FUNC4(struct btrfs_path *path, const char *name, int name_len)
{
    struct btrfs_dir_item *item = (struct btrfs_dir_item *) FUNC1(path);
    u32 cur = 0, this_len;
    const char *name_ptr;

    while (cur < FUNC2(path)->size)
    {
        this_len = sizeof(*item) + item->name_len + item->data_len;
        name_ptr = (const char *) item + sizeof(*item);

        if (FUNC3(item, cur, this_len))
            return NULL;
        if (item->name_len == name_len && !FUNC0(name_ptr, name, name_len))
            return item;

        cur += this_len;
        item = (struct btrfs_dir_item *) ((u8 *) item + this_len);
    }

    return NULL;
}