
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* ta_memdup (void*,void*,size_t) ;
 int ta_oom_b (int ) ;

void *ta_xmemdup(void *ta_parent, void *ptr, size_t size)
{
    void *new = ta_memdup(ta_parent, ptr, size);
    ta_oom_b(new || !ptr);
    return new;
}
