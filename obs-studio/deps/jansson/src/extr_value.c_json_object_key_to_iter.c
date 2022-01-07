
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* hashtable_key_to_iter (char const*) ;

void *json_object_key_to_iter(const char *key)
{
    if(!key)
        return ((void*)0);

    return hashtable_key_to_iter(key);
}
