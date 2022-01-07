
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int json_string_setn_nocheck (int *,char const*,int ) ;
 int strlen (char const*) ;

int json_string_set_nocheck(json_t *json, const char *value)
{
    if(!value)
        return -1;

    return json_string_setn_nocheck(json, value, strlen(value));
}
