
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int memcpy (void*,void*,size_t) ;
 void* ta_alloc_size (void*,size_t) ;

void *ta_memdup(void *ta_parent, void *ptr, size_t size)
{
    if (!ptr) {
        assert(!size);
        return ((void*)0);
    }
    void *res = ta_alloc_size(ta_parent, size);
    if (!res)
        return ((void*)0);
    memcpy(res, ptr, size);
    return res;
}
