
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct serializer {int dummy; } ;


 int s_wb16 (struct serializer*,int ) ;

__attribute__((used)) static inline void s_wb32(struct serializer *s, uint32_t u32)
{
 s_wb16(s, (uint16_t)(u32 >> 16));
 s_wb16(s, (uint16_t)u32);
}
