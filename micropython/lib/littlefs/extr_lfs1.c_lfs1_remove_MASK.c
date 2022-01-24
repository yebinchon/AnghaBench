#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {int /*<<< orphan*/  deorphaned; } ;
typedef  TYPE_4__ lfs1_t ;
struct TYPE_21__ {int /*<<< orphan*/  dir; } ;
struct TYPE_22__ {scalar_t__ type; TYPE_1__ u; } ;
struct TYPE_25__ {TYPE_2__ d; } ;
typedef  TYPE_5__ lfs1_entry_t ;
struct TYPE_23__ {int size; int /*<<< orphan*/ * tail; } ;
struct TYPE_26__ {TYPE_3__ d; int /*<<< orphan*/  pair; } ;
typedef  TYPE_6__ lfs1_dir_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int LFS1_ERR_NOTEMPTY ; 
 scalar_t__ LFS1_TYPE_DIR ; 
 int FUNC1 (TYPE_4__*) ; 
 int FUNC2 (TYPE_4__*,TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_4__*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_4__*,TYPE_6__*,TYPE_5__*,char const**) ; 
 int FUNC5 (TYPE_4__*,TYPE_6__*,TYPE_5__*) ; 
 int FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_6__*) ; 

int FUNC7(lfs1_t *lfs1, const char *path) {
    // deorphan if we haven't yet, needed at most once after poweron
    if (!lfs1->deorphaned) {
        int err = FUNC1(lfs1);
        if (err) {
            return err;
        }
    }

    lfs1_dir_t cwd;
    lfs1_entry_t entry;
    int err = FUNC4(lfs1, &cwd, &entry, &path);
    if (err) {
        return err;
    }

    lfs1_dir_t dir;
    if (entry.d.type == LFS1_TYPE_DIR) {
        // must be empty before removal, checking size
        // without masking top bit checks for any case where
        // dir is not empty
        err = FUNC3(lfs1, &dir, entry.d.u.dir);
        if (err) {
            return err;
        } else if (dir.d.size != sizeof(dir.d)+4) {
            return LFS1_ERR_NOTEMPTY;
        }
    }

    // remove the entry
    err = FUNC5(lfs1, &cwd, &entry);
    if (err) {
        return err;
    }

    // if we were a directory, find pred, replace tail
    if (entry.d.type == LFS1_TYPE_DIR) {
        int res = FUNC6(lfs1, dir.pair, &cwd);
        if (res < 0) {
            return res;
        }

        FUNC0(res); // must have pred
        cwd.d.tail[0] = dir.d.tail[0];
        cwd.d.tail[1] = dir.d.tail[1];

        err = FUNC2(lfs1, &cwd, NULL, 0);
        if (err) {
            return err;
        }
    }

    return 0;
}