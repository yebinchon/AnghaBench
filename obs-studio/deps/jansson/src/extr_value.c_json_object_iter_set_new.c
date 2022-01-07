
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int hashtable_iter_set (void*,int *) ;
 int json_is_object (int *) ;

int json_object_iter_set_new(json_t *json, void *iter, json_t *value)
{
    if(!json_is_object(json) || !iter || !value)
        return -1;

    hashtable_iter_set(iter, value);
    return 0;
}
