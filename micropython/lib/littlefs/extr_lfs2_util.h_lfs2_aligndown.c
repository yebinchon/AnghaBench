
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t lfs2_aligndown(uint32_t a, uint32_t alignment) {
    return a - (a % alignment);
}
