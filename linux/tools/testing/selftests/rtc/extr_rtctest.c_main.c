
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*) ;
 char* rtc_file ;
 int stderr ;
 int test_harness_run (int,char**) ;

int main(int argc, char **argv)
{
 switch (argc) {
 case 2:
  rtc_file = argv[1];

 case 1:
  break;
 default:
  fprintf(stderr, "usage: %s [rtcdev]\n", argv[0]);
  return 1;
 }

 return test_harness_run(argc, argv);
}
