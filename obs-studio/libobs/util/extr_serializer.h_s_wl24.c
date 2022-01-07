
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct serializer {int dummy; } ;


 int s_w8 (struct serializer*,int ) ;
 int s_wl16 (struct serializer*,int ) ;

__attribute__((used)) static inline void s_wl24(struct serializer *s, uint32_t u24)
{
 s_w8(s, (uint8_t)u24);
 s_wl16(s, (uint16_t)(u24 >> 8));
}
