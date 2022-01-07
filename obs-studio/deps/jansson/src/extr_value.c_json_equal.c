
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;







 int json_array_equal (int *,int *) ;
 int json_integer_equal (int *,int *) ;
 int json_object_equal (int *,int *) ;
 int json_real_equal (int *,int *) ;
 int json_string_equal (int *,int *) ;
 int json_typeof (int *) ;

int json_equal(json_t *json1, json_t *json2)
{
    if(!json1 || !json2)
        return 0;

    if(json_typeof(json1) != json_typeof(json2))
        return 0;


    if(json1 == json2)
        return 1;

    switch(json_typeof(json1)) {
        case 130:
            return json_object_equal(json1, json2);
        case 132:
            return json_array_equal(json1, json2);
        case 128:
            return json_string_equal(json1, json2);
        case 131:
            return json_integer_equal(json1, json2);
        case 129:
            return json_real_equal(json1, json2);
        default:
            return 0;
    }
}
