
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_2__ {char const* value; } ;


 int json_is_string (int const*) ;
 TYPE_1__* json_to_string (int const*) ;

const char *json_string_value(const json_t *json)
{
    if(!json_is_string(json))
        return ((void*)0);

    return json_to_string(json)->value;
}
