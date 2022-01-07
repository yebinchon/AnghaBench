
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tag ;
typedef scalar_t__ lfs2_tag_t ;
typedef scalar_t__ lfs2_size_t ;


 scalar_t__ lfs2_tag_isdelete (scalar_t__) ;
 scalar_t__ lfs2_tag_size (scalar_t__) ;

__attribute__((used)) static inline lfs2_size_t lfs2_tag_dsize(lfs2_tag_t tag) {
    return sizeof(tag) + lfs2_tag_size(tag + lfs2_tag_isdelete(tag));
}
