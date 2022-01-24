#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct lfs2_mlist {int dummy; } ;
struct TYPE_11__ {struct lfs2_mlist* mlist; int /*<<< orphan*/ * root; } ;
typedef  TYPE_1__ lfs2_t ;
typedef  int lfs2_stag_t ;
struct TYPE_13__ {int /*<<< orphan*/ * pair; } ;
struct TYPE_12__ {struct TYPE_12__* next; scalar_t__ type; scalar_t__ pos; scalar_t__ id; TYPE_6__ m; int /*<<< orphan*/ * head; } ;
typedef  TYPE_2__ lfs2_dir_t ;
typedef  int /*<<< orphan*/  lfs2_block_t ;

/* Variables and functions */
 int LFS2_ERR_NOTDIR ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 scalar_t__ LFS2_TYPE_DIR ; 
 int LFS2_TYPE_STRUCT ; 
 int FUNC2 (TYPE_1__*,TYPE_6__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,TYPE_6__*,char const**,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(lfs2_t *lfs2, lfs2_dir_t *dir, const char *path) {
    FUNC1("lfs2_dir_open(%p, %p, \"%s\")", (void*)lfs2, (void*)dir, path);
    lfs2_stag_t tag = FUNC3(lfs2, &dir->m, &path, NULL);
    if (tag < 0) {
        FUNC1("lfs2_dir_open -> %d", tag);
        return tag;
    }

    if (FUNC7(tag) != LFS2_TYPE_DIR) {
        FUNC1("lfs2_dir_open -> %d", LFS2_ERR_NOTDIR);
        return LFS2_ERR_NOTDIR;
    }

    lfs2_block_t pair[2];
    if (FUNC6(tag) == 0x3ff) {
        // handle root dir separately
        pair[0] = lfs2->root[0];
        pair[1] = lfs2->root[1];
    } else {
        // get dir pair from parent
        lfs2_stag_t res = FUNC4(lfs2, &dir->m, FUNC0(0x700, 0x3ff, 0),
                FUNC0(LFS2_TYPE_STRUCT, FUNC6(tag), 8), pair);
        if (res < 0) {
            FUNC1("lfs2_dir_open -> %d", res);
            return res;
        }
        FUNC5(pair);
    }

    // fetch first pair
    int err = FUNC2(lfs2, &dir->m, pair);
    if (err) {
        FUNC1("lfs2_dir_open -> %d", err);
        return err;
    }

    // setup entry
    dir->head[0] = dir->m.pair[0];
    dir->head[1] = dir->m.pair[1];
    dir->id = 0;
    dir->pos = 0;

    // add to list of mdirs
    dir->type = LFS2_TYPE_DIR;
    dir->next = (lfs2_dir_t*)lfs2->mlist;
    lfs2->mlist = (struct lfs2_mlist*)dir;

    FUNC1("lfs2_dir_open -> %d", 0);
    return 0;
}