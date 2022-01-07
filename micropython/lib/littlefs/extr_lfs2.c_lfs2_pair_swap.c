
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lfs2_block_t ;



__attribute__((used)) static inline void lfs2_pair_swap(lfs2_block_t pair[2]) {
    lfs2_block_t t = pair[0];
    pair[0] = pair[1];
    pair[1] = t;
}
