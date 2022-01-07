
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int fail (char*) ;
 int json_decref (int *) ;
 int json_integer (int) ;
 int json_integer_value (int *) ;
 int * json_object () ;
 int * json_object_get (int *,char*) ;
 scalar_t__ json_object_set_new_nocheck (int *,char*,int ) ;
 scalar_t__ json_object_set_nocheck (int *,char*,int *) ;
 int * json_string (char*) ;

__attribute__((used)) static void test_set_nocheck()
{
    json_t *object, *string;

    object = json_object();
    string = json_string("bar");

    if(!object)
        fail("unable to create object");
    if(!string)
        fail("unable to create string");

    if(json_object_set_nocheck(object, "foo", string))
        fail("json_object_set_nocheck failed");
    if(json_object_get(object, "foo") != string)
        fail("json_object_get after json_object_set_nocheck failed");


    if(json_object_set_nocheck(object, "a\xefz", string))
        fail("json_object_set_nocheck failed for invalid UTF-8");
    if(json_object_get(object, "a\xefz") != string)
        fail("json_object_get after json_object_set_nocheck failed");

    if(json_object_set_new_nocheck(object, "bax", json_integer(123)))
        fail("json_object_set_new_nocheck failed");
    if(json_integer_value(json_object_get(object, "bax")) != 123)
        fail("json_object_get after json_object_set_new_nocheck failed");


    if(json_object_set_new_nocheck(object, "asdf\xfe", json_integer(321)))
        fail("json_object_set_new_nocheck failed for invalid UTF-8");
    if(json_integer_value(json_object_get(object, "asdf\xfe")) != 321)
        fail("json_object_get after json_object_set_new_nocheck failed");

    json_decref(string);
    json_decref(object);
}
