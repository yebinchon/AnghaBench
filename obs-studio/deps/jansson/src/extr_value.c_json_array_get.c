
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_3__ {size_t entries; int ** table; } ;
typedef TYPE_1__ json_array_t ;


 int json_is_array (int const*) ;
 TYPE_1__* json_to_array (int const*) ;

json_t *json_array_get(const json_t *json, size_t index)
{
    json_array_t *array;
    if(!json_is_array(json))
        return ((void*)0);
    array = json_to_array(json);

    if(index >= array->entries)
        return ((void*)0);

    return array->table[index];
}
