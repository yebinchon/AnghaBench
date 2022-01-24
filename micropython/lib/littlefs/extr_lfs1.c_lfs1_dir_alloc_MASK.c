#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lfs1_t ;
struct TYPE_4__ {int rev; int size; int* tail; } ;
struct TYPE_5__ {int off; TYPE_1__ d; int /*<<< orphan*/ * pair; } ;
typedef  TYPE_2__ lfs1_dir_t ;

/* Variables and functions */
 int LFS1_ERR_CORRUPT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(lfs1_t *lfs1, lfs1_dir_t *dir) {
    // allocate pair of dir blocks
    for (int i = 0; i < 2; i++) {
        int err = FUNC0(lfs1, &dir->pair[i]);
        if (err) {
            return err;
        }
    }

    // rather than clobbering one of the blocks we just pretend
    // the revision may be valid
    int err = FUNC1(lfs1, dir->pair[0], 0, &dir->d.rev, 4);
    if (err && err != LFS1_ERR_CORRUPT) {
        return err;
    }

    if (err != LFS1_ERR_CORRUPT) {
        dir->d.rev = FUNC2(dir->d.rev);
    }

    // set defaults
    dir->d.rev += 1;
    dir->d.size = sizeof(dir->d)+4;
    dir->d.tail[0] = 0xffffffff;
    dir->d.tail[1] = 0xffffffff;
    dir->off = sizeof(dir->d);

    // don't write out yet, let caller take care of that
    return 0;
}