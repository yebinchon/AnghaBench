
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* obs_service_get_weak_service (void*) ;

__attribute__((used)) static inline void *weak_service_ref(void *ref)
{
 return obs_service_get_weak_service(ref);
}
