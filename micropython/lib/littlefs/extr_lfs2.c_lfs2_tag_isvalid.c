
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lfs2_tag_t ;



__attribute__((used)) static inline bool lfs2_tag_isvalid(lfs2_tag_t tag) {
    return !(tag & 0x80000000);
}
