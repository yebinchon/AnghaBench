
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_harness (int ,char*) ;
 int test_harness_set_timeout (int) ;
 int tm_unavailable_test ;

int main(int argc, char **argv)
{
 test_harness_set_timeout(220);
 return test_harness(tm_unavailable_test, "tm_unavailable_test");
}
