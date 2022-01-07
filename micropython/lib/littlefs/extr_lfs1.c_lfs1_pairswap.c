
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lfs1_block_t ;



__attribute__((used)) static inline void lfs1_pairswap(lfs1_block_t pair[2]) {
    lfs1_block_t t = pair[0];
    pair[0] = pair[1];
    pair[1] = t;
}
