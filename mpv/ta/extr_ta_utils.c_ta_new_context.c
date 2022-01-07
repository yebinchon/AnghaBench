
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dummy_dtor ;
 void* ta_alloc_size (void*,int ) ;
 int ta_free (void*) ;
 int ta_set_destructor (void*,int ) ;

void *ta_new_context(void *ta_parent)
{
    void *new = ta_alloc_size(ta_parent, 0);

    if (!ta_set_destructor(new, dummy_dtor)) {
        ta_free(new);
        new = ((void*)0);
    }
    return new;
}
