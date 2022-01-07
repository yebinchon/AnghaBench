
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_weak_ref {int refs; } ;


 int os_atomic_inc_long (int *) ;

__attribute__((used)) static inline void obs_ref_addref(struct obs_weak_ref *ref)
{
 os_atomic_inc_long(&ref->refs);
}
