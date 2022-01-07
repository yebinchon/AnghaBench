
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const zic_t ;
struct timerange {int count; size_t base; unsigned char defaulttype; int leapcount; size_t leapbase; } ;


 scalar_t__ const ZIC_MAX ;
 scalar_t__ const* trans ;

__attribute__((used)) static struct timerange
limitrange(struct timerange r, zic_t lo, zic_t hi,
     zic_t const *ats, unsigned char const *types)
{
 while (0 < r.count && ats[r.base] < lo)
 {
  r.defaulttype = types[r.base];
  r.count--;
  r.base++;
 }
 while (0 < r.leapcount && trans[r.leapbase] < lo)
 {
  r.leapcount--;
  r.leapbase++;
 }

 if (hi < ZIC_MAX)
 {
  while (0 < r.count && hi + 1 < ats[r.base + r.count - 1])
   r.count--;
  while (0 < r.leapcount && hi + 1 < trans[r.leapbase + r.leapcount - 1])
   r.leapcount--;
 }

 return r;
}
