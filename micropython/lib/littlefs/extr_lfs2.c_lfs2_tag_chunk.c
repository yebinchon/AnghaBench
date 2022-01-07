
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int lfs2_tag_t ;



__attribute__((used)) static inline uint8_t lfs2_tag_chunk(lfs2_tag_t tag) {
    return (tag & 0x0ff00000) >> 20;
}
