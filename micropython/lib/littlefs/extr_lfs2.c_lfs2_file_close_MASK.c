#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct lfs2_mlist {struct lfs2_mlist* next; } ;
struct TYPE_11__ {struct lfs2_mlist* mlist; } ;
typedef  TYPE_3__ lfs2_t ;
struct TYPE_10__ {int /*<<< orphan*/  buffer; } ;
struct TYPE_12__ {int flags; TYPE_2__ cache; TYPE_1__* cfg; } ;
typedef  TYPE_4__ lfs2_file_t ;
struct TYPE_9__ {int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int LFS2_F_OPENED ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int FUNC2 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(lfs2_t *lfs2, lfs2_file_t *file) {
    FUNC1("lfs2_file_close(%p, %p)", (void*)lfs2, (void*)file);
    FUNC0(file->flags & LFS2_F_OPENED);

    int err = FUNC2(lfs2, file);

    // remove from list of mdirs
    for (struct lfs2_mlist **p = &lfs2->mlist; *p; p = &(*p)->next) {
        if (*p == (struct lfs2_mlist*)file) {
            *p = (*p)->next;
            break;
        }
    }

    // clean up memory
    if (!file->cfg->buffer) {
        FUNC3(file->cache.buffer);
    }

    file->flags &= ~LFS2_F_OPENED;
    FUNC1("lfs2_file_close -> %d", err);
    return err;
}