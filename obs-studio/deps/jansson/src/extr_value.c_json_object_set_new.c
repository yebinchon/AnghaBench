
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int json_decref (int *) ;
 int json_object_set_new_nocheck (int *,char const*,int *) ;
 int strlen (char const*) ;
 int utf8_check_string (char const*,int ) ;

int json_object_set_new(json_t *json, const char *key, json_t *value)
{
    if(!key || !utf8_check_string(key, strlen(key)))
    {
        json_decref(value);
        return -1;
    }

    return json_object_set_new_nocheck(json, key, value);
}
