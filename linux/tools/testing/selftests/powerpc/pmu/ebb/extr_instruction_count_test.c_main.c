
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int instruction_count ;
 int test_harness (int ,char*) ;
 int test_harness_set_timeout (int) ;

int main(void)
{
 test_harness_set_timeout(300);
 return test_harness(instruction_count, "instruction_count");
}
