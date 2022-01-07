
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* hashtable_iter_key (void*) ;

const char *json_object_iter_key(void *iter)
{
    if(!iter)
        return ((void*)0);

    return hashtable_iter_key(iter);
}
