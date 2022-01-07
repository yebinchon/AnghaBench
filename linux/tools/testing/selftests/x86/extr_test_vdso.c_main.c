
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fill_function_pointers () ;
 scalar_t__ nerrs ;
 int test_clock_gettime () ;
 int test_getcpu () ;
 int test_gettimeofday () ;

int main(int argc, char **argv)
{
 fill_function_pointers();

 test_clock_gettime();
 test_gettimeofday();





 test_getcpu();

 return nerrs ? 1 : 0;
}
