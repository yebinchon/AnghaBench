
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ta_set_parent (void*,void*) ;

void *ta_steal_(void *ta_parent, void *ptr)
{
    if (!ta_set_parent(ptr, ta_parent))
        return ((void*)0);
    return ptr;
}
