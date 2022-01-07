
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;







 int json_delete_array (int ) ;
 int json_delete_integer (int ) ;
 int json_delete_object (int ) ;
 int json_delete_real (int ) ;
 int json_delete_string (int ) ;
 int json_to_array (int *) ;
 int json_to_integer (int *) ;
 int json_to_object (int *) ;
 int json_to_real (int *) ;
 int json_to_string (int *) ;
 int json_typeof (int *) ;

void json_delete(json_t *json)
{
    if (!json)
        return;

    switch(json_typeof(json)) {
        case 130:
            json_delete_object(json_to_object(json));
            break;
        case 132:
            json_delete_array(json_to_array(json));
            break;
        case 128:
            json_delete_string(json_to_string(json));
            break;
        case 131:
            json_delete_integer(json_to_integer(json));
            break;
        case 129:
            json_delete_real(json_to_real(json));
            break;
        default:
            return;
    }


}
