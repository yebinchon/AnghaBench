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
typedef  int uint32_t ;
typedef  int lfs2_tag_t ;

/* Variables and functions */
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int LFS2_TYPE_DELETE ; 
 scalar_t__ LFS2_TYPE_SPLICE ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(void *p,
        lfs2_tag_t tag, const void *buffer) {
    lfs2_tag_t *filtertag = p;
    (void)buffer;

    // which mask depends on unique bit in tag structure
    uint32_t mask = (tag & FUNC0(0x100, 0, 0))
            ? FUNC0(0x7ff, 0x3ff, 0)
            : FUNC0(0x700, 0x3ff, 0);

    // check for redundancy
    if ((mask & tag) == (mask & *filtertag) ||
            FUNC2(*filtertag) ||
            (FUNC0(0x7ff, 0x3ff, 0) & tag) == (
                FUNC0(LFS2_TYPE_DELETE, 0, 0) |
                    (FUNC0(0, 0x3ff, 0) & *filtertag))) {
        return true;
    }

    // check if we need to adjust for created/deleted tags
    if (FUNC4(tag) == LFS2_TYPE_SPLICE &&
            FUNC1(tag) <= FUNC1(*filtertag)) {
        *filtertag += FUNC0(0, FUNC3(tag), 0);
    }

    return false;
}