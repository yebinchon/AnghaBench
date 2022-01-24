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
struct lfs2_diskoff {int /*<<< orphan*/  off; int /*<<< orphan*/  block; } ;
struct lfs2_dir_find_match {scalar_t__ size; int /*<<< orphan*/  name; TYPE_1__* lfs2; } ;
typedef  int /*<<< orphan*/  lfs2_tag_t ;
struct TYPE_3__ {int /*<<< orphan*/  rcache; } ;
typedef  TYPE_1__ lfs2_t ;
typedef  int /*<<< orphan*/  lfs2_size_t ;

/* Variables and functions */
 int LFS2_CMP_EQ ; 
 int LFS2_CMP_GT ; 
 int LFS2_CMP_LT ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void *data,
        lfs2_tag_t tag, const void *buffer) {
    struct lfs2_dir_find_match *name = data;
    lfs2_t *lfs2 = name->lfs2;
    const struct lfs2_diskoff *disk = buffer;

    // compare with disk
    lfs2_size_t diff = FUNC1(name->size, FUNC2(tag));
    int res = FUNC0(lfs2,
            NULL, &lfs2->rcache, diff,
            disk->block, disk->off, name->name, diff);
    if (res != LFS2_CMP_EQ) {
        return res;
    }

    // only equal if our size is still the same
    if (name->size != FUNC2(tag)) {
        return (name->size < FUNC2(tag)) ? LFS2_CMP_LT : LFS2_CMP_GT;
    }

    // found a match!
    return LFS2_CMP_EQ;
}