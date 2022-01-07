
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_weak_ref {int weak_refs; } ;


 int os_atomic_dec_long (int *) ;

__attribute__((used)) static inline bool obs_weak_ref_release(struct obs_weak_ref *ref)
{
 return os_atomic_dec_long(&ref->weak_refs) == -1;
}
