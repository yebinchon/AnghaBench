
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int * json_real (int ) ;
 int json_real_value (int const*) ;

__attribute__((used)) static json_t *json_real_copy(const json_t *real)
{
    return json_real(json_real_value(real));
}
