
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_2__ {double value; } ;


 scalar_t__ isinf (double) ;
 scalar_t__ isnan (double) ;
 int json_is_real (int *) ;
 TYPE_1__* json_to_real (int *) ;

int json_real_set(json_t *json, double value)
{
    if(!json_is_real(json) || isnan(value) || isinf(value))
        return -1;

    json_to_real(json)->value = value;

    return 0;
}
