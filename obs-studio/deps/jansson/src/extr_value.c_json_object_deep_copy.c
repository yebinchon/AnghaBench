
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int json_deep_copy (int const*) ;
 int * json_object () ;
 void* json_object_iter (int *) ;
 char* json_object_iter_key (void*) ;
 void* json_object_iter_next (int *,void*) ;
 int * json_object_iter_value (void*) ;
 int json_object_set_new_nocheck (int *,char const*,int ) ;

__attribute__((used)) static json_t *json_object_deep_copy(const json_t *object)
{
    json_t *result;
    void *iter;

    result = json_object();
    if(!result)
        return ((void*)0);



    iter = json_object_iter((json_t *)object);
    while(iter) {
        const char *key;
        const json_t *value;
        key = json_object_iter_key(iter);
        value = json_object_iter_value(iter);

        json_object_set_new_nocheck(result, key, json_deep_copy(value));
        iter = json_object_iter_next((json_t *)object, iter);
    }

    return result;
}
