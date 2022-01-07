
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct serializer {int dummy; } ;


 int s_wl64 (struct serializer*,int ) ;

__attribute__((used)) static inline void s_wld(struct serializer *s, double d)
{
 s_wl64(s, *(uint64_t *)&d);
}
