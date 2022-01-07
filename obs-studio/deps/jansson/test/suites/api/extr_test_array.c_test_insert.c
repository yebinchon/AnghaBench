
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int fail (char*) ;
 int * json_array () ;
 int * json_array_get (int *,int) ;
 scalar_t__ json_array_insert (int *,int,int *) ;
 scalar_t__ json_array_insert_new (int *,int,int *) ;
 int json_array_size (int *) ;
 int json_decref (int *) ;
 int * json_integer (int) ;
 int json_integer_value (int *) ;
 int json_is_integer (int *) ;

__attribute__((used)) static void test_insert(void)
{
    json_t *array, *five, *seven, *eleven, *value;
    int i;

    array = json_array();
    five = json_integer(5);
    seven = json_integer(7);
    eleven = json_integer(11);

    if(!array)
        fail("unable to create array");
    if(!five || !seven || !eleven)
        fail("unable to create integer");


    if(!json_array_insert(array, 1, five))
        fail("able to insert value out of bounds");


    if(json_array_insert(array, 0, five))
        fail("unable to insert value in an empty array");

    if(json_array_get(array, 0) != five)
        fail("json_array_insert works incorrectly");

    if(json_array_size(array) != 1)
        fail("array size is invalid after insertion");


    if(json_array_insert(array, 1, seven))
        fail("unable to insert value at the end of an array");

    if(json_array_get(array, 0) != five)
        fail("json_array_insert works incorrectly");

    if(json_array_get(array, 1) != seven)
        fail("json_array_insert works incorrectly");

    if(json_array_size(array) != 2)
        fail("array size is invalid after insertion");


    if(json_array_insert(array, 1, eleven))
        fail("unable to insert value in the middle of an array");

    if(json_array_get(array, 0) != five)
        fail("json_array_insert works incorrectly");

    if(json_array_get(array, 1) != eleven)
        fail("json_array_insert works incorrectly");

    if(json_array_get(array, 2) != seven)
        fail("json_array_insert works incorrectly");

    if(json_array_size(array) != 3)
        fail("array size is invalid after insertion");


    if(json_array_insert_new(array, 2, json_integer(123)))
        fail("unable to insert value in the middle of an array");

    value = json_array_get(array, 2);
    if(!json_is_integer(value) || json_integer_value(value) != 123)
        fail("json_array_insert_new works incorrectly");

    if(json_array_size(array) != 4)
        fail("array size is invalid after insertion");


    for(i = 0; i < 20; i++) {
        if(json_array_insert(array, 0, seven))
            fail("unable to insert value at the begining of an array");
    }

    for(i = 0; i < 20; i++) {
        if(json_array_get(array, i) != seven)
            fail("json_aray_insert works incorrectly");
    }

    if(json_array_size(array) != 24)
        fail("array size is invalid after loop insertion");

    json_decref(five);
    json_decref(seven);
    json_decref(eleven);
    json_decref(array);
}
