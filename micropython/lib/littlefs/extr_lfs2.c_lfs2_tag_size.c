
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lfs2_tag_t ;
typedef int lfs2_size_t ;



__attribute__((used)) static inline lfs2_size_t lfs2_tag_size(lfs2_tag_t tag) {
    return tag & 0x000003ff;
}
