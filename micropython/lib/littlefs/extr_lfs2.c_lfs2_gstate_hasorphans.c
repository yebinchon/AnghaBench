
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lfs2_gstate {int tag; } ;


 int lfs2_tag_size (int ) ;

__attribute__((used)) static inline bool lfs2_gstate_hasorphans(const struct lfs2_gstate *a) {
    return lfs2_tag_size(a->tag);
}
