
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lfs2_gstate {int tag; } ;


 int LFS2_MKTAG (int,int ,int ) ;

__attribute__((used)) static inline void lfs2_gstate_xororphans(struct lfs2_gstate *a,
        const struct lfs2_gstate *b, bool orphans) {
    a->tag ^= LFS2_MKTAG(0x800, 0, 0) & (b->tag ^ ((uint32_t)orphans << 31));
}
