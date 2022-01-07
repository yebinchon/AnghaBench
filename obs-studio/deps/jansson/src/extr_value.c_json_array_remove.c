
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_4__ {size_t entries; int * table; } ;
typedef TYPE_1__ json_array_t ;


 int array_move (TYPE_1__*,size_t,size_t,size_t) ;
 int json_decref (int ) ;
 int json_is_array (int *) ;
 TYPE_1__* json_to_array (int *) ;

int json_array_remove(json_t *json, size_t index)
{
    json_array_t *array;

    if(!json_is_array(json))
        return -1;
    array = json_to_array(json);

    if(index >= array->entries)
        return -1;

    json_decref(array->table[index]);


    if(index < array->entries - 1)
        array_move(array, index, index + 1, array->entries - index - 1);

    array->entries--;

    return 0;
}
