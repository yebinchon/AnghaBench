
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int * string_create (char const*,int ,int ) ;
 int strlen (char const*) ;

json_t *json_string_nocheck(const char *value)
{
    if(!value)
        return ((void*)0);

    return string_create(value, strlen(value), 0);
}
