
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int * json_stringn (char const*,int ) ;
 int strlen (char const*) ;

json_t *json_string(const char *value)
{
    if(!value)
        return ((void*)0);

    return json_stringn(value, strlen(value));
}
