
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ lfs2_aligndown (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline uint32_t lfs2_alignup(uint32_t a, uint32_t alignment) {
    return lfs2_aligndown(a + alignment-1, alignment);
}
