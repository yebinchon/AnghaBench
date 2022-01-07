
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flag; } ;


 int atoi (int ) ;
 int exit (int) ;
 char getopt_long (int,char**,char*,TYPE_1__*,int*) ;
 int iterations ;
 int optarg ;
 TYPE_1__* options ;
 int test_harness (int ,char*) ;
 int test_harness_set_timeout (int) ;
 int test_mmap ;
 int usage () ;

int main(int argc, char *argv[])
{
 signed char c;
 while (1) {
  int option_index = 0;

  c = getopt_long(argc, argv, "", options, &option_index);

  if (c == -1)
   break;

  switch (c) {
  case 0:
   if (options[option_index].flag != 0)
    break;

   usage();
   exit(1);
   break;
  case 'i':
   iterations = atoi(optarg);
   break;
  default:
   usage();
   exit(1);
  }
 }

 test_harness_set_timeout(300);
 return test_harness(test_mmap, "mmap_bench");
}
