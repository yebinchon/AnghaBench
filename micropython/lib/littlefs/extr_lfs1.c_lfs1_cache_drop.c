
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lfs1_t ;
struct TYPE_3__ {int block; } ;
typedef TYPE_1__ lfs1_cache_t ;



__attribute__((used)) static inline void lfs1_cache_drop(lfs1_t *lfs1, lfs1_cache_t *rcache) {


    (void)lfs1;
    rcache->block = 0xffffffff;
}
