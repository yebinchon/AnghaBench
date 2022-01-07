
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct lfs2_gstate {int tag; } ;


 int lfs2_tag_size (int ) ;

__attribute__((used)) static inline uint8_t lfs2_gstate_getorphans(const struct lfs2_gstate *a) {
    return lfs2_tag_size(a->tag);
}
