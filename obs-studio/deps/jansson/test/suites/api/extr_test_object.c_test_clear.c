
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int fail (char*) ;
 int json_decref (int *) ;
 int * json_integer (int) ;
 int * json_object () ;
 int json_object_clear (int *) ;
 scalar_t__ json_object_set (int *,char*,int *) ;
 int json_object_size (int *) ;

__attribute__((used)) static void test_clear()
{
    json_t *object, *ten;

    object = json_object();
    ten = json_integer(10);

    if(!object)
        fail("unable to create object");
    if(!ten)
        fail("unable to create integer");

    if(json_object_set(object, "a", ten) ||
       json_object_set(object, "b", ten) ||
       json_object_set(object, "c", ten) ||
       json_object_set(object, "d", ten) ||
       json_object_set(object, "e", ten))
        fail("unable to set value");

    if(json_object_size(object) != 5)
        fail("invalid size");

    json_object_clear(object);

    if(json_object_size(object) != 0)
        fail("invalid size after clear");

    json_decref(ten);
    json_decref(object);
}
