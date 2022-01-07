
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int fail (char*) ;
 int json_decref (int *) ;
 int * json_dumps (int *,int ) ;
 int * json_object () ;
 scalar_t__ json_object_set (int *,char*,int *) ;

__attribute__((used)) static void test_circular()
{
    json_t *object1, *object2;

    object1 = json_object();
    object2 = json_object();
    if(!object1 || !object2)
        fail("unable to create object");


    if(json_object_set(object1, "a", object1) == 0)
        fail("able to set self");


    if(json_object_set(object1, "a", object2) ||
       json_object_set(object2, "a", object1))
        fail("unable to set value");


    if(json_dumps(object1, 0) != ((void*)0))
        fail("able to dump circulars");


    json_decref(object1);
    json_decref(object2);
    json_decref(object1);
}
