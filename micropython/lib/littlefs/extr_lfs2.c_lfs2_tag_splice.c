
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lfs2_tag_t ;
typedef int int8_t ;


 int lfs2_tag_chunk (int ) ;

__attribute__((used)) static inline int8_t lfs2_tag_splice(lfs2_tag_t tag) {
    return (int8_t)lfs2_tag_chunk(tag);
}
