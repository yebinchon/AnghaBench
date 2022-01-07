
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int fail (char*) ;
 int * json_array () ;
 scalar_t__ json_array_append (int *,int *) ;
 scalar_t__ json_array_append_new (int *,int *) ;
 int * json_array_get (int *,int) ;
 scalar_t__ json_array_set (int *,int,int *) ;
 scalar_t__ json_array_set_new (int *,int,int *) ;
 int json_array_size (int *) ;
 int json_decref (int *) ;
 int * json_integer (int) ;
 int json_integer_value (int *) ;
 int json_is_integer (int *) ;

__attribute__((used)) static void test_misc(void)
{
    json_t *array, *five, *seven, *value;
    size_t i;

    array = json_array();
    five = json_integer(5);
    seven = json_integer(7);

    if(!array)
        fail("unable to create array");
    if(!five || !seven)
        fail("unable to create integer");

    if(json_array_size(array) != 0)
        fail("empty array has nonzero size");

    if(!json_array_append(array, ((void*)0)))
        fail("able to append NULL");

    if(json_array_append(array, five))
        fail("unable to append");

    if(json_array_size(array) != 1)
        fail("wrong array size");

    value = json_array_get(array, 0);
    if(!value)
        fail("unable to get item");
    if(value != five)
        fail("got wrong value");

    if(json_array_append(array, seven))
        fail("unable to append value");

    if(json_array_size(array) != 2)
        fail("wrong array size");

    value = json_array_get(array, 1);
    if(!value)
        fail("unable to get item");
    if(value != seven)
        fail("got wrong value");

    if(json_array_set(array, 0, seven))
        fail("unable to set value");

    if(!json_array_set(array, 0, ((void*)0)))
        fail("able to set NULL");

    if(json_array_size(array) != 2)
        fail("wrong array size");

    value = json_array_get(array, 0);
    if(!value)
        fail("unable to get item");
    if(value != seven)
        fail("got wrong value");

    if(json_array_get(array, 2) != ((void*)0))
        fail("able to get value out of bounds");

    if(!json_array_set(array, 2, seven))
        fail("able to set value out of bounds");

    for(i = 2; i < 30; i++) {
        if(json_array_append(array, seven))
            fail("unable to append value");

        if(json_array_size(array) != i + 1)
            fail("wrong array size");
    }

    for(i = 0; i < 30; i++) {
        value = json_array_get(array, i);
        if(!value)
            fail("unable to get item");
        if(value != seven)
            fail("got wrong value");
    }

    if(json_array_set_new(array, 15, json_integer(123)))
        fail("unable to set new value");

    value = json_array_get(array, 15);
    if(!json_is_integer(value) || json_integer_value(value) != 123)
        fail("json_array_set_new works incorrectly");

    if(!json_array_set_new(array, 15, ((void*)0)))
        fail("able to set_new NULL value");

    if(json_array_append_new(array, json_integer(321)))
        fail("unable to append new value");

    value = json_array_get(array, json_array_size(array) - 1);
    if(!json_is_integer(value) || json_integer_value(value) != 321)
        fail("json_array_append_new works incorrectly");

    if(!json_array_append_new(array, ((void*)0)))
        fail("able to append_new NULL value");

    json_decref(five);
    json_decref(seven);
    json_decref(array);
}
