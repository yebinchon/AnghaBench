
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lfs2_gstate {int pair; int tag; } ;
typedef int lfs2_block_t ;


 scalar_t__ lfs2_pair_cmp (int ,int const*) ;
 scalar_t__ lfs2_tag_type1 (int ) ;

__attribute__((used)) static inline bool lfs2_gstate_hasmovehere(const struct lfs2_gstate *a,
        const lfs2_block_t *pair) {
    return lfs2_tag_type1(a->tag) && lfs2_pair_cmp(a->pair, pair) == 0;
}
