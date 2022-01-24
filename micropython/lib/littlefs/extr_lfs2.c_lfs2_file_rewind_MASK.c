#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lfs2_t ;
typedef  scalar_t__ lfs2_soff_t ;
typedef  int /*<<< orphan*/  lfs2_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  LFS2_SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (char*,void*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(lfs2_t *lfs2, lfs2_file_t *file) {
    FUNC0("lfs2_file_rewind(%p, %p)", (void*)lfs2, (void*)file);
    lfs2_soff_t res = FUNC1(lfs2, file, 0, LFS2_SEEK_SET);
    if (res < 0) {
        FUNC0("lfs2_file_rewind -> %d", res);
        return (int)res;
    }

    FUNC0("lfs2_file_rewind -> %d", 0);
    return 0;
}