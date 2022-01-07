
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int * string_create (char const*,size_t,int ) ;

json_t *json_stringn_nocheck(const char *value, size_t len)
{
    return string_create(value, len, 0);
}
