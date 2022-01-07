
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct serializer {int dummy; } ;


 int s_write (struct serializer*,int *,int) ;

__attribute__((used)) static inline void s_w8(struct serializer *s, uint8_t u8)
{
 s_write(s, &u8, sizeof(uint8_t));
}
