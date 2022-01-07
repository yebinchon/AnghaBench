
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_3__ {double value; int json; } ;
typedef TYPE_1__ json_real_t ;


 int JSON_REAL ;
 scalar_t__ isinf (double) ;
 scalar_t__ isnan (double) ;
 int json_init (int *,int ) ;
 TYPE_1__* jsonp_malloc (int) ;

json_t *json_real(double value)
{
    json_real_t *real;

    if(isnan(value) || isinf(value))
        return ((void*)0);

    real = jsonp_malloc(sizeof(json_real_t));
    if(!real)
        return ((void*)0);
    json_init(&real->json, JSON_REAL);

    real->value = value;
    return &real->json;
}
