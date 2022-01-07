
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_3__ {int hashtable; } ;
typedef TYPE_1__ json_object_t ;


 void* hashtable_iter_next (int *,void*) ;
 int json_is_object (int *) ;
 TYPE_1__* json_to_object (int *) ;

void *json_object_iter_next(json_t *json, void *iter)
{
    json_object_t *object;

    if(!json_is_object(json) || iter == ((void*)0))
        return ((void*)0);

    object = json_to_object(json);
    return hashtable_iter_next(&object->hashtable, iter);
}
