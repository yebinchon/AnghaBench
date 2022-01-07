
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int lfs2_fromle32 (int ) ;

__attribute__((used)) static inline uint32_t lfs2_tole32(uint32_t a) {
    return lfs2_fromle32(a);
}
