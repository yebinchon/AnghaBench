
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int enabled; char* friendly_name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 void* atoi (int ) ;
 int error (int,int ,char*,...) ;
 char getopt_long (int,char**,char*,int ,int*) ;
 int long_options ;
 void* op_size ;
 int optarg ;
 int print_test_case (TYPE_1__*) ;
 int printf (char*,...) ;
 scalar_t__ run_test_case (TYPE_1__,TYPE_1__) ;
 TYPE_1__* socket_types ;
 TYPE_1__* test_cases ;

int main(int argc, char **argv)
{
 bool all_protocols = 1;
 bool all_tests = 1;
 int arg_index = 0;
 int failures = 0;
 int s, t;
 char opt;

 while ((opt = getopt_long(argc, argv, "", long_options,
      &arg_index)) != -1) {
  switch (opt) {
  case 'l':
   for (t = 0; t < ARRAY_SIZE(test_cases); t++) {
    printf("%d\t", t);
    print_test_case(&test_cases[t]);
   }
   return 0;
  case 'n':
   t = atoi(optarg);
   if (t >= ARRAY_SIZE(test_cases))
    error(1, 0, "Invalid test case: %d", t);
   all_tests = 0;
   test_cases[t].enabled = 1;
   break;
  case 's':
   op_size = atoi(optarg);
   break;
  case 't':
   all_protocols = 0;
   socket_types[2].enabled = 1;
   break;
  case 'u':
   all_protocols = 0;
   socket_types[1].enabled = 1;
   break;
  case 'i':
   all_protocols = 0;
   socket_types[0].enabled = 1;
   break;
  default:
   error(1, 0, "Failed to parse parameters.");
  }
 }

 for (s = 0; s < ARRAY_SIZE(socket_types); s++) {
  if (!all_protocols && !socket_types[s].enabled)
   continue;

  printf("Testing %s...\n", socket_types[s].friendly_name);
  for (t = 0; t < ARRAY_SIZE(test_cases); t++) {
   if (!all_tests && !test_cases[t].enabled)
    continue;

   printf("Starting testcase %d...\n", t);
   if (run_test_case(socket_types[s], test_cases[t])) {
    failures++;
    printf("FAILURE in test case ");
    print_test_case(&test_cases[t]);
   }
  }
 }
 if (!failures)
  printf("PASSED.\n");
 return failures;
}
