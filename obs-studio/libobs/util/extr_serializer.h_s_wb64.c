
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct serializer {int dummy; } ;


 int s_wb32 (struct serializer*,int ) ;

__attribute__((used)) static inline void s_wb64(struct serializer *s, uint64_t u64)
{
 s_wb32(s, (uint32_t)(u64 >> 32));
 s_wb32(s, (uint32_t)u64);
}
