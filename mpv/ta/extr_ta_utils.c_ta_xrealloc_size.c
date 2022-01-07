
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ta_oom_b (int ) ;
 void* ta_realloc_size (void*,void*,size_t) ;

void *ta_xrealloc_size(void *ta_parent, void *ptr, size_t size)
{
    ptr = ta_realloc_size(ta_parent, ptr, size);
    ta_oom_b(ptr || !size);
    return ptr;
}
