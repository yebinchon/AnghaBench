
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_3__ {scalar_t__ length; int value; } ;
typedef TYPE_1__ json_string_t ;


 int json_is_string (int *) ;
 TYPE_1__* json_to_string (int *) ;
 int memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int json_string_equal(json_t *string1, json_t *string2)
{
    json_string_t *s1, *s2;

    if(!json_is_string(string1) || !json_is_string(string2))
        return 0;

    s1 = json_to_string(string1);
    s2 = json_to_string(string2);
    return s1->length == s2->length && !memcmp(s1->value, s2->value, s1->length);
}
