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
struct lfs2_info {int dummy; } ;
typedef  int /*<<< orphan*/  lfs2_t ;
typedef  int lfs2_stag_t ;
typedef  int /*<<< orphan*/  lfs2_mdir_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct lfs2_info*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(lfs2_t *lfs2, const char *path, struct lfs2_info *info) {
    FUNC0("lfs2_stat(%p, \"%s\", %p)", (void*)lfs2, path, (void*)info);
    lfs2_mdir_t cwd;
    lfs2_stag_t tag = FUNC1(lfs2, &cwd, &path, NULL);
    if (tag < 0) {
        FUNC0("lfs2_stat -> %d", tag);
        return (int)tag;
    }

    int err = FUNC2(lfs2, &cwd, FUNC3(tag), info);
    FUNC0("lfs2_stat -> %d", err);
    return err;
}