
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_body ;
 int test_harness (int ,char*) ;

int main(void)
{
 return test_harness(test_body, "load_unaligned_zeropad");
}
