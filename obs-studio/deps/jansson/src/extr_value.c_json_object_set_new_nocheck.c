
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_3__ {int hashtable; } ;
typedef TYPE_1__ json_object_t ;


 scalar_t__ hashtable_set (int *,char const*,int *) ;
 int json_decref (int *) ;
 int json_is_object (int *) ;
 TYPE_1__* json_to_object (int *) ;

int json_object_set_new_nocheck(json_t *json, const char *key, json_t *value)
{
    json_object_t *object;

    if(!value)
        return -1;

    if(!key || !json_is_object(json) || json == value)
    {
        json_decref(value);
        return -1;
    }
    object = json_to_object(json);

    if(hashtable_set(&object->hashtable, key, value))
    {
        json_decref(value);
        return -1;
    }

    return 0;
}
