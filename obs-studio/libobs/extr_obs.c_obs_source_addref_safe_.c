
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* obs_source_get_ref (void*) ;

__attribute__((used)) static inline void *obs_source_addref_safe_(void *ref)
{
 return obs_source_get_ref(ref);
}
