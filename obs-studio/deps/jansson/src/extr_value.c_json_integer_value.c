
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int json_t ;
typedef int json_int_t ;
struct TYPE_2__ {int value; } ;


 int json_is_integer (int const*) ;
 TYPE_1__* json_to_integer (int const*) ;

json_int_t json_integer_value(const json_t *json)
{
    if(!json_is_integer(json))
        return 0;

    return json_to_integer(json)->value;
}
