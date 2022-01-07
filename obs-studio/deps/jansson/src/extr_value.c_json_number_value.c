
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 scalar_t__ json_integer_value (int const*) ;
 scalar_t__ json_is_integer (int const*) ;
 scalar_t__ json_is_real (int const*) ;
 double json_real_value (int const*) ;

double json_number_value(const json_t *json)
{
    if(json_is_integer(json))
        return (double)json_integer_value(json);
    else if(json_is_real(json))
        return json_real_value(json);
    else
        return 0.0;
}
