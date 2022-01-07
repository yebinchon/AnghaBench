
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int fail (char*) ;
 int * json_array () ;
 int json_array_append_new (int *,int ) ;
 int json_array_remove (int *,int) ;
 int json_decref (int *) ;
 scalar_t__ json_equal (int *,int *) ;
 int json_integer (int) ;
 int json_string (char*) ;

__attribute__((used)) static void test_equal_array()
{
    json_t *array1, *array2;

    array1 = json_array();
    array2 = json_array();
    if(!array1 || !array2)
        fail("unable to create arrays");

    if(!json_equal(array1, array2))
        fail("json_equal fails for two empty arrays");

    json_array_append_new(array1, json_integer(1));
    json_array_append_new(array2, json_integer(1));
    json_array_append_new(array1, json_string("foo"));
    json_array_append_new(array2, json_string("foo"));
    json_array_append_new(array1, json_integer(2));
    json_array_append_new(array2, json_integer(2));
    if(!json_equal(array1, array2))
        fail("json_equal fails for two equal arrays");

    json_array_remove(array2, 2);
    if(json_equal(array1, array2))
        fail("json_equal fails for two inequal arrays");

    json_array_append_new(array2, json_integer(3));
    if(json_equal(array1, array2))
        fail("json_equal fails for two inequal arrays");

    json_decref(array1);
    json_decref(array2);
}
