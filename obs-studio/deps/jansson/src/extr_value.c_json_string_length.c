
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_2__ {size_t length; } ;


 int json_is_string (int const*) ;
 TYPE_1__* json_to_string (int const*) ;

size_t json_string_length(const json_t *json)
{
    if(!json_is_string(json))
        return 0;

    return json_to_string(json)->length;
}
