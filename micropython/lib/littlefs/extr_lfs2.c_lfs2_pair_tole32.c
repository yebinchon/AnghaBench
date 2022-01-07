
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lfs2_block_t ;


 int lfs2_tole32 (int ) ;

__attribute__((used)) static inline void lfs2_pair_tole32(lfs2_block_t pair[2]) {
    pair[0] = lfs2_tole32(pair[0]);
    pair[1] = lfs2_tole32(pair[1]);
}
