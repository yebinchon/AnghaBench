#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int /*<<< orphan*/  deorphaned; } ;
typedef  TYPE_4__ lfs1_t ;
struct TYPE_20__ {int /*<<< orphan*/ * dir; } ;
struct TYPE_21__ {int elen; TYPE_1__ u; int /*<<< orphan*/  nlen; scalar_t__ alen; int /*<<< orphan*/  type; } ;
struct TYPE_24__ {TYPE_2__ d; } ;
typedef  TYPE_5__ lfs1_entry_t ;
struct TYPE_22__ {int /*<<< orphan*/ * tail; } ;
struct TYPE_25__ {int /*<<< orphan*/ * pair; TYPE_3__ d; } ;
typedef  TYPE_6__ lfs1_dir_t ;

/* Variables and functions */
 int LFS1_ERR_EXIST ; 
 int LFS1_ERR_NOENT ; 
 int /*<<< orphan*/  LFS1_TYPE_DIR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int FUNC1 (TYPE_4__*) ; 
 int FUNC2 (TYPE_4__*,TYPE_6__*) ; 
 int FUNC3 (TYPE_4__*,TYPE_6__*,TYPE_5__*,char const*) ; 
 int FUNC4 (TYPE_4__*,TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_4__*,TYPE_6__*,TYPE_5__*,char const**) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

int FUNC8(lfs1_t *lfs1, const char *path) {
    // deorphan if we haven't yet, needed at most once after poweron
    if (!lfs1->deorphaned) {
        int err = FUNC1(lfs1);
        if (err) {
            return err;
        }
    }

    // fetch parent directory
    lfs1_dir_t cwd;
    lfs1_entry_t entry;
    int err = FUNC5(lfs1, &cwd, &entry, &path);
    if (err != LFS1_ERR_NOENT || FUNC6(path, '/') != NULL) {
        return err ? err : LFS1_ERR_EXIST;
    }

    // build up new directory
    FUNC0(lfs1);

    lfs1_dir_t dir;
    err = FUNC2(lfs1, &dir);
    if (err) {
        return err;
    }
    dir.d.tail[0] = cwd.d.tail[0];
    dir.d.tail[1] = cwd.d.tail[1];

    err = FUNC4(lfs1, &dir, NULL, 0);
    if (err) {
        return err;
    }

    entry.d.type = LFS1_TYPE_DIR;
    entry.d.elen = sizeof(entry.d) - 4;
    entry.d.alen = 0;
    entry.d.nlen = FUNC7(path);
    entry.d.u.dir[0] = dir.pair[0];
    entry.d.u.dir[1] = dir.pair[1];

    cwd.d.tail[0] = dir.pair[0];
    cwd.d.tail[1] = dir.pair[1];

    err = FUNC3(lfs1, &cwd, &entry, path);
    if (err) {
        return err;
    }

    FUNC0(lfs1);
    return 0;
}