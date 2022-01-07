
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ next_ns; } ;
typedef TYPE_1__ mp_media_t ;


 scalar_t__ os_gettime_ns () ;
 int os_sleepto_ns (scalar_t__) ;

__attribute__((used)) static inline bool mp_media_sleepto(mp_media_t *m)
{
 bool timeout = 0;

 if (!m->next_ns) {
  m->next_ns = os_gettime_ns();
 } else {
  uint64_t t = os_gettime_ns();
  const uint64_t timeout_ns = 200000000;

  if (m->next_ns > t && (m->next_ns - t) > timeout_ns) {
   os_sleepto_ns(t + timeout_ns);
   timeout = 1;
  } else {
   os_sleepto_ns(m->next_ns);
  }
 }

 return timeout;
}
