
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int * json_stringn_nocheck (char const*,size_t) ;
 int utf8_check_string (char const*,size_t) ;

json_t *json_stringn(const char *value, size_t len)
{
    if(!value || !utf8_check_string(value, len))
        return ((void*)0);

    return json_stringn_nocheck(value, len);
}
