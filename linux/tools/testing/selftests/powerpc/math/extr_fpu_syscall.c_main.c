
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_harness (int ,char*) ;
 int test_syscall_fpu ;

int main(int argc, char *argv[])
{
 return test_harness(test_syscall_fpu, "syscall_fpu");

}
