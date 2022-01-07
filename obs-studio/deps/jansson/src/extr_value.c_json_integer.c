
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_3__ {int json; int value; } ;
typedef TYPE_1__ json_integer_t ;
typedef int json_int_t ;


 int JSON_INTEGER ;
 int json_init (int *,int ) ;
 TYPE_1__* jsonp_malloc (int) ;

json_t *json_integer(json_int_t value)
{
    json_integer_t *integer = jsonp_malloc(sizeof(json_integer_t));
    if(!integer)
        return ((void*)0);
    json_init(&integer->json, JSON_INTEGER);

    integer->value = value;
    return &integer->json;
}
