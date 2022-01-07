
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lfs1_block_t ;



__attribute__((used)) static inline bool lfs1_pairisnull(const lfs1_block_t pair[2]) {
    return pair[0] == 0xffffffff || pair[1] == 0xffffffff;
}
