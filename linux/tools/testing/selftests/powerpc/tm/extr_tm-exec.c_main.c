
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int after_exec () ;
 char* path ;
 scalar_t__ strcmp (char*,char*) ;
 int test_exec ;
 int test_harness (int ,char*) ;

int main(int argc, char *argv[])
{
 path = argv[0];

 if (argc > 1 && strcmp(argv[1], "--child") == 0)
  return after_exec();

 return test_harness(test_exec, "tm_exec");
}
