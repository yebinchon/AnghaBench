
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lfs2_gstate {void** pair; void* tag; } ;


 void* lfs2_tole32 (void*) ;

__attribute__((used)) static inline void lfs2_gstate_tole32(struct lfs2_gstate *a) {
    a->tag = lfs2_tole32(a->tag);
    a->pair[0] = lfs2_tole32(a->pair[0]);
    a->pair[1] = lfs2_tole32(a->pair[1]);
}
