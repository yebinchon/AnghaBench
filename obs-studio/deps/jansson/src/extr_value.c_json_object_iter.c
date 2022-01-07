
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_3__ {int hashtable; } ;
typedef TYPE_1__ json_object_t ;


 void* hashtable_iter (int *) ;
 int json_is_object (int *) ;
 TYPE_1__* json_to_object (int *) ;

void *json_object_iter(json_t *json)
{
    json_object_t *object;

    if(!json_is_object(json))
        return ((void*)0);

    object = json_to_object(json);
    return hashtable_iter(&object->hashtable);
}
