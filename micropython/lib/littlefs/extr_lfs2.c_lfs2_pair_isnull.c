
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ lfs2_block_t ;


 scalar_t__ const LFS2_BLOCK_NULL ;

__attribute__((used)) static inline bool lfs2_pair_isnull(const lfs2_block_t pair[2]) {
    return pair[0] == LFS2_BLOCK_NULL || pair[1] == LFS2_BLOCK_NULL;
}
