
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_3__ {size_t entries; size_t size; int ** table; } ;
typedef TYPE_1__ json_array_t ;


 int array_copy (int **,int ,int **,int ,size_t) ;
 int jsonp_free (int **) ;
 int ** jsonp_malloc (size_t) ;
 size_t max (size_t,int) ;

__attribute__((used)) static json_t **json_array_grow(json_array_t *array,
                                size_t amount,
                                int copy)
{
    size_t new_size;
    json_t **old_table, **new_table;

    if(array->entries + amount <= array->size)
        return array->table;

    old_table = array->table;

    new_size = max(array->size + amount, array->size * 2);
    new_table = jsonp_malloc(new_size * sizeof(json_t *));
    if(!new_table)
        return ((void*)0);

    array->size = new_size;
    array->table = new_table;

    if(copy) {
        array_copy(array->table, 0, old_table, 0, array->entries);
        jsonp_free(old_table);
        return array->table;
    }

    return old_table;
}
