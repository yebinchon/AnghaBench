
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int json_string_setn_nocheck (int *,char const*,size_t) ;
 int utf8_check_string (char const*,size_t) ;

int json_string_setn(json_t *json, const char *value, size_t len)
{
    if(!value || !utf8_check_string(value, len))
        return -1;

    return json_string_setn_nocheck(json, value, len);
}
