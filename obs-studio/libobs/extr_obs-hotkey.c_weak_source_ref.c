
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* obs_source_get_weak_source (void*) ;

__attribute__((used)) static inline void *weak_source_ref(void *ref)
{
 return obs_source_get_weak_source(ref);
}
