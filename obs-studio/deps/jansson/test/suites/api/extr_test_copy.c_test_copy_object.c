
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int fail (char*) ;
 int * json_copy (int *) ;
 int json_decref (int *) ;
 int json_equal (int *,int *) ;
 int * json_loads (char const*,int ,int *) ;
 int * json_object_get (int *,char const*) ;
 void* json_object_iter (int *) ;
 char* json_object_iter_key (void*) ;
 void* json_object_iter_next (int *,void*) ;
 int * json_object_iter_value (void*) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static void test_copy_object(void)
{
    const char *json_object_text =
        "{\"foo\": \"bar\", \"a\": 1, \"b\": 3.141592, \"c\": [1,2,3,4]}";

    const char *keys[] = {"foo", "a", "b", "c"};
    int i;

    json_t *object, *copy;
    void *iter;

    object = json_loads(json_object_text, 0, ((void*)0));
    if(!object)
        fail("unable to parse an object");

    copy = json_copy(object);
    if(!copy)
        fail("unable to copy an object");
    if(copy == object)
        fail("copying an object doesn't copy");
    if(!json_equal(copy, object))
        fail("copying an object produces an inequal copy");

    i = 0;
    iter = json_object_iter(object);
    while(iter)
    {
        const char *key;
        json_t *value1, *value2;

        key = json_object_iter_key(iter);
        value1 = json_object_iter_value(iter);
        value2 = json_object_get(copy, key);

        if(value1 != value2)
            fail("copying an object modifies its items");

        if (strcmp(key, keys[i]) != 0)
            fail("copying an object doesn't preserve key order");

        iter = json_object_iter_next(object, iter);
        i++;
    }

    json_decref(object);
    json_decref(copy);
}
