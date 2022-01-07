
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_harness (int ,char*) ;
 int tm_vmx_unavail_test ;

int main(int argc, char **argv)
{
 return test_harness(tm_vmx_unavail_test, "tm_vmx_unavail_test");
}
