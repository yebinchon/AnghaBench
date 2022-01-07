
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;
 int * json_array_deep_copy (int const*) ;
 int * json_integer_copy (int const*) ;
 int * json_object_deep_copy (int const*) ;
 int * json_real_copy (int const*) ;
 int * json_string_copy (int const*) ;
 int json_typeof (int const*) ;

json_t *json_deep_copy(const json_t *json)
{
    if(!json)
        return ((void*)0);

    switch(json_typeof(json)) {
        case 131:
            return json_object_deep_copy(json);
        case 135:
            return json_array_deep_copy(json);


        case 129:
            return json_string_copy(json);
        case 133:
            return json_integer_copy(json);
        case 130:
            return json_real_copy(json);
        case 128:
        case 134:
        case 132:
            return (json_t *)json;
        default:
            return ((void*)0);
    }

    return ((void*)0);
}
