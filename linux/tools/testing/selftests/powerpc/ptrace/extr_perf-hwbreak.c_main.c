
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int perf_hwbreak ;
 int test_harness (int ,char*) ;

int main(int argc, char *argv[], char **envp)
{
 return test_harness(perf_hwbreak, "perf_hwbreak");
}
