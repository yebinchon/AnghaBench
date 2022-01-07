
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int lfs2_tag_t ;


 int LFS2_MKTAG (int,int,int ) ;
 int LFS2_TYPE_DELETE ;
 scalar_t__ LFS2_TYPE_SPLICE ;
 scalar_t__ lfs2_tag_id (int) ;
 scalar_t__ lfs2_tag_isdelete (int) ;
 int lfs2_tag_splice (int) ;
 scalar_t__ lfs2_tag_type1 (int) ;

__attribute__((used)) static int lfs2_dir_traverse_filter(void *p,
        lfs2_tag_t tag, const void *buffer) {
    lfs2_tag_t *filtertag = p;
    (void)buffer;


    uint32_t mask = (tag & LFS2_MKTAG(0x100, 0, 0))
            ? LFS2_MKTAG(0x7ff, 0x3ff, 0)
            : LFS2_MKTAG(0x700, 0x3ff, 0);


    if ((mask & tag) == (mask & *filtertag) ||
            lfs2_tag_isdelete(*filtertag) ||
            (LFS2_MKTAG(0x7ff, 0x3ff, 0) & tag) == (
                LFS2_MKTAG(LFS2_TYPE_DELETE, 0, 0) |
                    (LFS2_MKTAG(0, 0x3ff, 0) & *filtertag))) {
        return 1;
    }


    if (lfs2_tag_type1(tag) == LFS2_TYPE_SPLICE &&
            lfs2_tag_id(tag) <= lfs2_tag_id(*filtertag)) {
        *filtertag += LFS2_MKTAG(0, lfs2_tag_splice(tag), 0);
    }

    return 0;
}
