
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int * json_array () ;
 int json_array_append_new (int *,int ) ;
 int json_array_get (int const*,size_t) ;
 size_t json_array_size (int const*) ;
 int json_deep_copy (int ) ;

__attribute__((used)) static json_t *json_array_deep_copy(const json_t *array)
{
    json_t *result;
    size_t i;

    result = json_array();
    if(!result)
        return ((void*)0);

    for(i = 0; i < json_array_size(array); i++)
        json_array_append_new(result, json_deep_copy(json_array_get(array, i)));

    return result;
}
