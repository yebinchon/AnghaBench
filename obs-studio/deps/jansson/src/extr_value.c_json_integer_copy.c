
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int * json_integer (int ) ;
 int json_integer_value (int const*) ;

__attribute__((used)) static json_t *json_integer_copy(const json_t *integer)
{
    return json_integer(json_integer_value(integer));
}
