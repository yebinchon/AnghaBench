
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_4__ {size_t size; } ;
struct TYPE_5__ {TYPE_1__ hashtable; } ;
typedef TYPE_2__ json_object_t ;


 int json_is_object (int const*) ;
 TYPE_2__* json_to_object (int const*) ;

size_t json_object_size(const json_t *json)
{
    json_object_t *object;

    if(!json_is_object(json))
        return 0;

    object = json_to_object(json);
    return object->hashtable.size;
}
