
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* obs_encoder_get_weak_encoder (void*) ;

__attribute__((used)) static inline void *weak_encoder_ref(void *ref)
{
 return obs_encoder_get_weak_encoder(ref);
}
