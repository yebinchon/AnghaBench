
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct serializer {int dummy; } ;


 int s_w8 (struct serializer*,int) ;

__attribute__((used)) static inline void s_wl16(struct serializer *s, uint16_t u16)
{
 s_w8(s, (uint8_t)u16);
 s_w8(s, u16 >> 8);
}
