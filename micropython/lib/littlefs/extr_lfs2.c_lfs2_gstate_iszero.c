
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct lfs2_gstate {int dummy; } ;



__attribute__((used)) static inline bool lfs2_gstate_iszero(const struct lfs2_gstate *a) {
    for (int i = 0; i < 3; i++) {
        if (((uint32_t*)a)[i] != 0) {
            return 0;
        }
    }
    return 1;
}
