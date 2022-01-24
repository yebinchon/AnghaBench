#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  tag ;
struct lfs2_mattr {int tag; void* buffer; } ;
struct lfs2_diskoff {scalar_t__ off; int /*<<< orphan*/  block; } ;
struct lfs2_attr {int type; void const* buffer; int /*<<< orphan*/  size; } ;
typedef  int lfs2_tag_t ;
struct TYPE_9__ {int tag; } ;
struct TYPE_7__ {TYPE_3__ gpending; int /*<<< orphan*/  rcache; } ;
typedef  TYPE_1__ lfs2_t ;
typedef  scalar_t__ lfs2_off_t ;
struct TYPE_8__ {scalar_t__ off; int /*<<< orphan*/ * pair; } ;
typedef  TYPE_2__ lfs2_mdir_t ;
typedef  int int16_t ;

/* Variables and functions */
 int LFS2_BLOCK_NULL ; 
 scalar_t__ LFS2_FROM_MOVE ; 
 scalar_t__ LFS2_FROM_NOOP ; 
 scalar_t__ LFS2_FROM_USERATTRS ; 
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int LFS2_TYPE_STRUCT ; 
 int LFS2_TYPE_USERATTR ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,scalar_t__,int*,int) ; 
 int FUNC2 (void*,int,void const*) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (int) ; 
 unsigned int FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(lfs2_t *lfs2,
        const lfs2_mdir_t *dir, lfs2_off_t off, lfs2_tag_t ptag,
        const struct lfs2_mattr *attrs, int attrcount, bool hasseenmove,
        lfs2_tag_t tmask, lfs2_tag_t ttag,
        uint16_t begin, uint16_t end, int16_t diff,
        int (*cb)(void *data, lfs2_tag_t tag, const void *buffer), void *data) {
    // iterate over directory and attrs
    while (true) {
        lfs2_tag_t tag;
        const void *buffer;
        struct lfs2_diskoff disk;
        if (off+FUNC5(ptag) < dir->off) {
            off += FUNC5(ptag);
            int err = FUNC1(lfs2,
                    NULL, &lfs2->rcache, sizeof(tag),
                    dir->pair[0], off, &tag, sizeof(tag));
            if (err) {
                return err;
            }

            tag = (FUNC3(tag) ^ ptag) | 0x80000000;
            disk.block = dir->pair[0];
            disk.off = off+sizeof(lfs2_tag_t);
            buffer = &disk;
            ptag = tag;
        } else if (attrcount > 0) {
            tag = attrs[0].tag;
            buffer = attrs[0].buffer;
            attrs += 1;
            attrcount -= 1;
        } else if (!hasseenmove &&
                FUNC4(&lfs2->gpending, dir->pair)) {
            // Wait, we have pending move? Handle this here (we need to
            // or else we risk letting moves fall out of date)
            tag = lfs2->gpending.tag & FUNC0(0x7ff, 0x3ff, 0);
            buffer = NULL;
            hasseenmove = true;
        } else {
            return 0;
        }

        lfs2_tag_t mask = FUNC0(0x7ff, 0, 0);
        if ((mask & tmask & tag) != (mask & tmask & ttag)) {
            continue;
        }

        // do we need to filter? inlining the filtering logic here allows
        // for some minor optimizations
        if (FUNC6(tmask) != 0) {
            // scan for duplicates and update tag based on creates/deletes
            int filter = FUNC9(lfs2,
                    dir, off, ptag, attrs, attrcount, hasseenmove,
                    0, 0, 0, 0, 0,
                    lfs2_dir_traverse_filter, &tag);
            if (filter < 0) {
                return filter;
            }

            if (filter) {
                continue;
            }

            // in filter range?
            if (!(FUNC6(tag) >= begin && FUNC6(tag) < end)) {
                continue;
            }
        }

        // handle special cases for mcu-side operations
        if (FUNC8(tag) == LFS2_FROM_NOOP) {
            // do nothing
        } else if (FUNC8(tag) == LFS2_FROM_MOVE) {
            uint16_t fromid = FUNC7(tag);
            uint16_t toid = FUNC6(tag);
            int err = FUNC9(lfs2,
                    buffer, 0, LFS2_BLOCK_NULL, NULL, 0, true,
                    FUNC0(0x600, 0x3ff, 0),
                    FUNC0(LFS2_TYPE_STRUCT, 0, 0),
                    fromid, fromid+1, toid-fromid+diff,
                    cb, data);
            if (err) {
                return err;
            }
        } else if (FUNC8(tag) == LFS2_FROM_USERATTRS) {
            for (unsigned i = 0; i < FUNC7(tag); i++) {
                const struct lfs2_attr *a = buffer;
                int err = cb(data, FUNC0(LFS2_TYPE_USERATTR + a[i].type,
                        FUNC6(tag) + diff, a[i].size), a[i].buffer);
                if (err) {
                    return err;
                }
            }
        } else {
            int err = cb(data, tag + FUNC0(0, diff, 0), buffer);
            if (err) {
                return err;
            }
        }
    }
}