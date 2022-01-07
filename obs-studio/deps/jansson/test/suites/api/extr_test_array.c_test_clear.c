
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int fail (char*) ;
 int * json_array () ;
 scalar_t__ json_array_append (int *,int *) ;
 scalar_t__ json_array_clear (int *) ;
 int json_array_size (int *) ;
 int json_decref (int *) ;
 int * json_integer (int) ;

__attribute__((used)) static void test_clear(void)
{
    json_t *array, *five, *seven;
    int i;

    array = json_array();
    five = json_integer(5);
    seven = json_integer(7);

    if(!array)
        fail("unable to create array");
    if(!five || !seven)
        fail("unable to create integer");

    for(i = 0; i < 10; i++) {
        if(json_array_append(array, five))
            fail("unable to append");
    }
    for(i = 0; i < 10; i++) {
        if(json_array_append(array, seven))
            fail("unable to append");
    }

    if(json_array_size(array) != 20)
        fail("array size is invalid after appending");

    if(json_array_clear(array))
        fail("unable to clear");

    if(json_array_size(array) != 0)
        fail("array size is invalid after clearing");

    json_decref(five);
    json_decref(seven);
    json_decref(array);
}
