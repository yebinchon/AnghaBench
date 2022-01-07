
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_3__ {int size; int json; scalar_t__ visited; void* table; scalar_t__ entries; } ;
typedef TYPE_1__ json_array_t ;


 int JSON_ARRAY ;
 int json_init (int *,int ) ;
 int jsonp_free (TYPE_1__*) ;
 void* jsonp_malloc (int) ;

json_t *json_array(void)
{
    json_array_t *array = jsonp_malloc(sizeof(json_array_t));
    if(!array)
        return ((void*)0);
    json_init(&array->json, JSON_ARRAY);

    array->entries = 0;
    array->size = 8;

    array->table = jsonp_malloc(array->size * sizeof(json_t *));
    if(!array->table) {
        jsonp_free(array);
        return ((void*)0);
    }

    array->visited = 0;

    return &array->json;
}
