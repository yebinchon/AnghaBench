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
typedef  int /*<<< orphan*/  temp ;
struct lfs2_gstate {int dummy; } ;
typedef  int /*<<< orphan*/  lfs2_t ;
typedef  scalar_t__ lfs2_stag_t ;
typedef  int /*<<< orphan*/  lfs2_mdir_t ;

/* Variables and functions */
 scalar_t__ LFS2_ERR_NOENT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int LFS2_TYPE_MOVESTATE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lfs2_gstate*) ; 
 int /*<<< orphan*/  FUNC2 (struct lfs2_gstate*) ; 
 int /*<<< orphan*/  FUNC3 (struct lfs2_gstate*,struct lfs2_gstate*) ; 

__attribute__((used)) static int FUNC4(lfs2_t *lfs2, const lfs2_mdir_t *dir,
        struct lfs2_gstate *gstate) {
    struct lfs2_gstate temp;
    lfs2_stag_t res = FUNC1(lfs2, dir, FUNC0(0x7ff, 0, 0),
            FUNC0(LFS2_TYPE_MOVESTATE, 0, sizeof(temp)), &temp);
    if (res < 0 && res != LFS2_ERR_NOENT) {
        return res;
    }

    if (res != LFS2_ERR_NOENT) {
        // xor together to find resulting gstate
        FUNC2(&temp);
        FUNC3(gstate, &temp);
    }

    return 0;
}