
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int fail (char*) ;
 int * json_array () ;
 scalar_t__ json_array_append (int *,int *) ;
 scalar_t__ json_array_append_new (int *,int ) ;
 scalar_t__ json_array_insert (int *,int ,int *) ;
 scalar_t__ json_array_set (int *,int ,int *) ;
 int json_decref (int *) ;
 int * json_dumps (int *,int ) ;
 int json_true () ;

__attribute__((used)) static void test_circular()
{
    json_t *array1, *array2;



    array1 = json_array();
    if(!array1)
        fail("unable to create array");

    if(json_array_append(array1, array1) == 0)
        fail("able to append self");

    if(json_array_insert(array1, 0, array1) == 0)
        fail("able to insert self");

    if(json_array_append_new(array1, json_true()))
        fail("failed to append true");

    if(json_array_set(array1, 0, array1) == 0)
        fail("able to set self");

    json_decref(array1);




    array1 = json_array();
    array2 = json_array();
    if(!array1 || !array2)
        fail("unable to create array");

    if(json_array_append(array1, array2) ||
       json_array_append(array2, array1))
        fail("unable to append");


    if(json_dumps(array1, 0) != ((void*)0))
        fail("able to dump circulars");


    json_decref(array1);
    json_decref(array2);
    json_decref(array1);
}
