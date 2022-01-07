
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int fail (char*) ;
 int json_decref (int *) ;
 int json_integer_value (int ) ;
 int json_object_get (int *,char*) ;
 int json_object_size (int *) ;
 scalar_t__ json_object_update_existing (int *,int *) ;
 scalar_t__ json_object_update_missing (int *,int *) ;
 int * json_pack (char*,char*,int,char*,int) ;

__attribute__((used)) static void test_conditional_updates()
{
    json_t *object, *other;

    object = json_pack("{sisi}", "foo", 1, "bar", 2);
    other = json_pack("{sisi}", "foo", 3, "baz", 4);

    if(json_object_update_existing(object, other))
        fail("json_object_update_existing failed");

    if(json_object_size(object) != 2)
        fail("json_object_update_existing added new items");

    if(json_integer_value(json_object_get(object, "foo")) != 3)
        fail("json_object_update_existing failed to update existing key");

    if(json_integer_value(json_object_get(object, "bar")) != 2)
        fail("json_object_update_existing updated wrong key");

    json_decref(object);

    object = json_pack("{sisi}", "foo", 1, "bar", 2);

    if(json_object_update_missing(object, other))
        fail("json_object_update_missing failed");

    if(json_object_size(object) != 3)
        fail("json_object_update_missing didn't add new items");

    if(json_integer_value(json_object_get(object, "foo")) != 1)
        fail("json_object_update_missing updated existing key");

    if(json_integer_value(json_object_get(object, "bar")) != 2)
        fail("json_object_update_missing updated wrong key");

    if(json_integer_value(json_object_get(object, "baz")) != 4)
        fail("json_object_update_missing didn't add new items");

    json_decref(object);
    json_decref(other);
}
