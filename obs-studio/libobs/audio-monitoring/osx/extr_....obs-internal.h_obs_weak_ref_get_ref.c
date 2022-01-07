
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_weak_ref {long refs; } ;


 scalar_t__ os_atomic_compare_swap_long (long*,long,long) ;

__attribute__((used)) static inline bool obs_weak_ref_get_ref(struct obs_weak_ref *ref)
{
 long owners = ref->refs;
 while (owners > -1) {
  if (os_atomic_compare_swap_long(&ref->refs, owners, owners + 1))
   return 1;

  owners = ref->refs;
 }

 return 0;
}
