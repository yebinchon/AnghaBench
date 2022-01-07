
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* obs_output_get_weak_output (void*) ;

__attribute__((used)) static inline void *weak_output_ref(void *ref)
{
 return obs_output_get_weak_output(ref);
}
