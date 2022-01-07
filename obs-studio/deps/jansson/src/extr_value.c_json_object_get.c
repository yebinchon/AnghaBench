
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_3__ {int hashtable; } ;
typedef TYPE_1__ json_object_t ;


 int * hashtable_get (int *,char const*) ;
 int json_is_object (int const*) ;
 TYPE_1__* json_to_object (int const*) ;

json_t *json_object_get(const json_t *json, const char *key)
{
    json_object_t *object;

    if(!key || !json_is_object(json))
        return ((void*)0);

    object = json_to_object(json);
    return hashtable_get(&object->hashtable, key);
}
