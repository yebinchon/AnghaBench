
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 scalar_t__ hashtable_iter_value (void*) ;

json_t *json_object_iter_value(void *iter)
{
    if(!iter)
        return ((void*)0);

    return (json_t *)hashtable_iter_value(iter);
}
