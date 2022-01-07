
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lfs2_tag_t ;
typedef int int32_t ;



__attribute__((used)) static inline bool lfs2_tag_isdelete(lfs2_tag_t tag) {
    return ((int32_t)(tag << 22) >> 22) == -1;
}
