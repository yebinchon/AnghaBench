
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;
typedef int json_int_t ;


 double NAN ;
 int fail (char*) ;
 int json_decref (int *) ;
 int * json_integer (int) ;
 int json_integer_value (int *) ;
 double json_number_value (int *) ;
 int * json_real (double) ;
 int json_real_set (int *,double) ;
 double json_real_value (int *) ;
 int test_inifity () ;

__attribute__((used)) static void run_tests()
{
    json_t *integer, *real;
    json_int_t i;
    double d;

    integer = json_integer(5);
    real = json_real(100.1);

    if(!integer)
        fail("unable to create integer");
    if(!real)
        fail("unable to create real");

    i = json_integer_value(integer);
    if(i != 5)
        fail("wrong integer value");

    d = json_real_value(real);
    if(d != 100.1)
        fail("wrong real value");

    d = json_number_value(integer);
    if(d != 5.0)
        fail("wrong number value");
    d = json_number_value(real);
    if(d != 100.1)
        fail("wrong number value");

    json_decref(integer);
    json_decref(real);
}
