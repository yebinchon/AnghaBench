
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_3__ {int length; int value; } ;
typedef TYPE_1__ json_string_t ;


 int json_is_string (int const*) ;
 int * json_stringn_nocheck (int ,int ) ;
 TYPE_1__* json_to_string (int const*) ;

__attribute__((used)) static json_t *json_string_copy(const json_t *string)
{
    json_string_t *s;

    if(!json_is_string(string))
        return ((void*)0);

    s = json_to_string(string);
    return json_stringn_nocheck(s->value, s->length);
}
