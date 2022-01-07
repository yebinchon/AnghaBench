
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct serializer {int dummy; } ;


 int s_wl32 (struct serializer*,int ) ;

__attribute__((used)) static inline void s_wlf(struct serializer *s, float f)
{
 s_wl32(s, *(uint32_t *)&f);
}
