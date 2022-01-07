
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 double INFINITY ;
 int fail (char*) ;
 int json_decref (int *) ;
 int * json_real (double) ;
 int json_real_set (int *,double) ;
 double json_real_value (int *) ;

__attribute__((used)) static void test_inifity()
{
    json_t *real = json_real(INFINITY);
    if (real != ((void*)0))
       fail("could construct a real from Inf");

    real = json_real(1.0);
    if (json_real_set(real, INFINITY) != -1)
     fail("could set a real to Inf");

    if (json_real_value(real) != 1.0)
       fail("real value changed unexpectedly");

    json_decref(real);



}
