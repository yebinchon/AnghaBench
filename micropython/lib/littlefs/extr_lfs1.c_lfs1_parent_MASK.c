#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int* root; } ;
typedef  TYPE_4__ lfs1_t ;
struct TYPE_16__ {int /*<<< orphan*/  dir; } ;
struct TYPE_17__ {int type; TYPE_2__ u; } ;
struct TYPE_19__ {TYPE_3__ d; } ;
typedef  TYPE_5__ lfs1_entry_t ;
struct TYPE_15__ {int* tail; } ;
struct TYPE_20__ {TYPE_1__ d; } ;
typedef  TYPE_6__ lfs1_dir_t ;
typedef  int /*<<< orphan*/  lfs1_block_t ;

/* Variables and functions */
 int LFS1_ERR_NOENT ; 
 int LFS1_TYPE_DIR ; 
 int FUNC0 (TYPE_4__*,TYPE_6__*,int*) ; 
 int FUNC1 (TYPE_4__*,TYPE_6__*,TYPE_5__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int*) ; 

__attribute__((used)) static int FUNC4(lfs1_t *lfs1, const lfs1_block_t dir[2],
        lfs1_dir_t *parent, lfs1_entry_t *entry) {
    if (FUNC3(lfs1->root)) {
        return 0;
    }

    parent->d.tail[0] = 0;
    parent->d.tail[1] = 1;

    // iterate over all directory directory entries
    while (!FUNC3(parent->d.tail)) {
        int err = FUNC0(lfs1, parent, parent->d.tail);
        if (err) {
            return err;
        }

        while (true) {
            err = FUNC1(lfs1, parent, entry);
            if (err && err != LFS1_ERR_NOENT) {
                return err;
            }

            if (err == LFS1_ERR_NOENT) {
                break;
            }

            if (((0x70 & entry->d.type) == (0x70 & LFS1_TYPE_DIR)) &&
                 FUNC2(entry->d.u.dir, dir) == 0) {
                return true;
            }
        }
    }

    return false;
}