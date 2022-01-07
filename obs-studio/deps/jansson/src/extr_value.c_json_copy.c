
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;
 int * json_array_copy (int *) ;
 int * json_integer_copy (int *) ;
 int * json_object_copy (int *) ;
 int * json_real_copy (int *) ;
 int * json_string_copy (int *) ;
 int json_typeof (int *) ;

json_t *json_copy(json_t *json)
{
    if(!json)
        return ((void*)0);

    switch(json_typeof(json)) {
        case 131:
            return json_object_copy(json);
        case 135:
            return json_array_copy(json);
        case 129:
            return json_string_copy(json);
        case 133:
            return json_integer_copy(json);
        case 130:
            return json_real_copy(json);
        case 128:
        case 134:
        case 132:
            return json;
        default:
            return ((void*)0);
    }

    return ((void*)0);
}
