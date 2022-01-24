#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct lfs2_info {int /*<<< orphan*/  size; scalar_t__ type; struct lfs2_ctz* name; } ;
struct lfs2_ctz {int /*<<< orphan*/  size; } ;
struct TYPE_4__ {int name_max; } ;
typedef  TYPE_1__ lfs2_t ;
typedef  scalar_t__ lfs2_stag_t ;
typedef  int /*<<< orphan*/  lfs2_mdir_t ;
typedef  int /*<<< orphan*/  ctz ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 scalar_t__ LFS2_TYPE_CTZSTRUCT ; 
 scalar_t__ LFS2_TYPE_DIR ; 
 scalar_t__ LFS2_TYPE_INLINESTRUCT ; 
 int LFS2_TYPE_NAME ; 
 int LFS2_TYPE_STRUCT ; 
 int /*<<< orphan*/  FUNC1 (struct lfs2_ctz*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lfs2_ctz*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct lfs2_ctz*,char*) ; 

__attribute__((used)) static int FUNC6(lfs2_t *lfs2, lfs2_mdir_t *dir,
        uint16_t id, struct lfs2_info *info) {
    if (id == 0x3ff) {
        // special case for root
        FUNC5(info->name, "/");
        info->type = LFS2_TYPE_DIR;
        return 0;
    }

    lfs2_stag_t tag = FUNC2(lfs2, dir, FUNC0(0x780, 0x3ff, 0),
            FUNC0(LFS2_TYPE_NAME, id, lfs2->name_max+1), info->name);
    if (tag < 0) {
        return (int)tag;
    }

    info->type = FUNC4(tag);

    struct lfs2_ctz ctz;
    tag = FUNC2(lfs2, dir, FUNC0(0x700, 0x3ff, 0),
            FUNC0(LFS2_TYPE_STRUCT, id, sizeof(ctz)), &ctz);
    if (tag < 0) {
        return (int)tag;
    }
    FUNC1(&ctz);

    if (FUNC4(tag) == LFS2_TYPE_CTZSTRUCT) {
        info->size = ctz.size;
    } else if (FUNC4(tag) == LFS2_TYPE_INLINESTRUCT) {
        info->size = FUNC3(tag);
    }

    return 0;
}