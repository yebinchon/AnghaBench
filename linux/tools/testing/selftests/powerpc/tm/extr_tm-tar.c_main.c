
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 int num_loops ;
 int printf (char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 int test_harness (int ,char*) ;
 int test_tar ;

int main(int argc, char *argv[])
{

 if (argc > 1) {
  if (strcmp(argv[1], "-h") == 0) {
   printf("Syntax:\n\t%s [<num loops>]\n",
          argv[0]);
   return 1;
  } else {
   num_loops = atoi(argv[1]);
  }
 }

 printf("Starting, %d loops\n", num_loops);

 return test_harness(test_tar, "tm_tar");
}
