
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ptrace_hwbreak ;
 int test_harness (int ,char*) ;

int main(int argc, char **argv, char **envp)
{
 return test_harness(ptrace_hwbreak, "ptrace-hwbreak");
}
