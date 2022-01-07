
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;



__attribute__((used)) static inline int lfs2_scmp(uint32_t a, uint32_t b) {
    return (int)(unsigned)(a - b);
}
