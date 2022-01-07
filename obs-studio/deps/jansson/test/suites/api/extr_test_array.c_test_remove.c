
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int fail (char*) ;
 int * json_array () ;
 scalar_t__ json_array_append (int *,int *) ;
 int * json_array_get (int *,int) ;
 scalar_t__ json_array_remove (int *,int) ;
 int json_array_size (int *) ;
 int json_decref (int *) ;
 int * json_integer (int) ;

__attribute__((used)) static void test_remove(void)
{
    json_t *array, *five, *seven;
    int i;

    array = json_array();
    five = json_integer(5);
    seven = json_integer(7);

    if(!array)
        fail("unable to create array");
    if(!five)
        fail("unable to create integer");
    if(!seven)
        fail("unable to create integer");


    if(!json_array_remove(array, 0))
        fail("able to remove an unexisting index");


    if(json_array_append(array, five))
        fail("unable to append");

    if(!json_array_remove(array, 1))
        fail("able to remove an unexisting index");

    if(json_array_remove(array, 0))
        fail("unable to remove");

    if(json_array_size(array) != 0)
        fail("array size is invalid after removing");


    if(json_array_append(array, five) ||
       json_array_append(array, seven) ||
       json_array_append(array, five) ||
       json_array_append(array, seven))
        fail("unable to append");

    if(json_array_remove(array, 2))
        fail("unable to remove");

    if(json_array_size(array) != 3)
        fail("array size is invalid after removing");

    if(json_array_get(array, 0) != five ||
       json_array_get(array, 1) != seven ||
       json_array_get(array, 2) != seven)
        fail("remove works incorrectly");

    json_decref(array);

    array = json_array();
    for(i = 0; i < 4; i++) {
        json_array_append(array, five);
        json_array_append(array, seven);
    }
    if(json_array_size(array) != 8)
        fail("unable to append 8 items to array");


    json_array_remove(array, 5);

    json_decref(five);
    json_decref(seven);
    json_decref(array);
}
