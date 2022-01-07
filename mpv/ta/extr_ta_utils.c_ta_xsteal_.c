
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ta_oom_b (int ) ;
 int ta_set_parent (void*,void*) ;

void *ta_xsteal_(void *ta_parent, void *ptr)
{
    ta_oom_b(ta_set_parent(ptr, ta_parent));
    return ptr;
}
