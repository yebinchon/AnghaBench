#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct lfs2_info {int /*<<< orphan*/  name; void* type; } ;
typedef  int /*<<< orphan*/  lfs2_t ;
struct TYPE_6__ {scalar_t__ count; int /*<<< orphan*/  tail; int /*<<< orphan*/  split; } ;
struct TYPE_5__ {int pos; scalar_t__ id; TYPE_3__ m; } ;
typedef  TYPE_1__ lfs2_dir_t ;

/* Variables and functions */
 int LFS2_ERR_NOENT ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 void* LFS2_TYPE_DIR ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,scalar_t__,struct lfs2_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct lfs2_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

int FUNC5(lfs2_t *lfs2, lfs2_dir_t *dir, struct lfs2_info *info) {
    FUNC0("lfs2_dir_read(%p, %p, %p)",
            (void*)lfs2, (void*)dir, (void*)info);
    FUNC3(info, 0, sizeof(*info));

    // special offset for '.' and '..'
    if (dir->pos == 0) {
        info->type = LFS2_TYPE_DIR;
        FUNC4(info->name, ".");
        dir->pos += 1;
        FUNC0("lfs2_dir_read -> %d", true);
        return true;
    } else if (dir->pos == 1) {
        info->type = LFS2_TYPE_DIR;
        FUNC4(info->name, "..");
        dir->pos += 1;
        FUNC0("lfs2_dir_read -> %d", true);
        return true;
    }

    while (true) {
        if (dir->id == dir->m.count) {
            if (!dir->m.split) {
                FUNC0("lfs2_dir_read -> %d", false);
                return false;
            }

            int err = FUNC1(lfs2, &dir->m, dir->m.tail);
            if (err) {
                FUNC0("lfs2_dir_read -> %d", err);
                return err;
            }

            dir->id = 0;
        }

        int err = FUNC2(lfs2, &dir->m, dir->id, info);
        if (err && err != LFS2_ERR_NOENT) {
            FUNC0("lfs2_dir_read -> %d", err);
            return err;
        }

        dir->id += 1;
        if (err != LFS2_ERR_NOENT) {
            break;
        }
    }

    dir->pos += 1;
    FUNC0("lfs2_dir_read -> %d", true);
    return true;
}