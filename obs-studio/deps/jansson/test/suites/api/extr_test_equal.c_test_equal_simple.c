
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int fail (char*) ;
 int json_decref (int *) ;
 scalar_t__ json_equal (int *,int *) ;
 int * json_integer (int) ;
 int * json_real (double) ;
 int * json_string (char*) ;
 int * json_true () ;

__attribute__((used)) static void test_equal_simple()
{
    json_t *value1, *value2;

    if(json_equal(((void*)0), ((void*)0)))
        fail("json_equal fails for two NULLs");

    value1 = json_true();
    if(json_equal(value1, ((void*)0)) || json_equal(((void*)0), value1))
        fail("json_equal fails for NULL");


    if(!json_equal(value1, value1))
        fail("identical objects are not equal");
    json_decref(value1);


    value1 = json_integer(1);
    value2 = json_integer(1);
    if(!value1 || !value2)
        fail("unable to create integers");
    if(!json_equal(value1, value2))
        fail("json_equal fails for two equal integers");
    json_decref(value2);

    value2 = json_integer(2);
    if(!value2)
        fail("unable to create an integer");
    if(json_equal(value1, value2))
        fail("json_equal fails for two inequal integers");

    json_decref(value1);
    json_decref(value2);


    value1 = json_real(1.2);
    value2 = json_real(1.2);
    if(!value1 || !value2)
        fail("unable to create reals");
    if(!json_equal(value1, value2))
        fail("json_equal fails for two equal reals");
    json_decref(value2);

    value2 = json_real(3.141592);
    if(!value2)
        fail("unable to create an real");
    if(json_equal(value1, value2))
        fail("json_equal fails for two inequal reals");

    json_decref(value1);
    json_decref(value2);


    value1 = json_string("foo");
    value2 = json_string("foo");
    if(!value1 || !value2)
        fail("unable to create strings");
    if(!json_equal(value1, value2))
        fail("json_equal fails for two equal strings");
    json_decref(value2);

    value2 = json_string("bar");
    if(!value2)
        fail("unable to create an string");
    if(json_equal(value1, value2))
        fail("json_equal fails for two inequal strings");

    json_decref(value1);
    json_decref(value2);
}
