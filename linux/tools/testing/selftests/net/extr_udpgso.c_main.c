
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cfg_do_ipv4 ;
 scalar_t__ cfg_do_ipv6 ;
 int fprintf (int ,char*) ;
 int parse_opts (int,char**) ;
 int run_test_v4 () ;
 int run_test_v6 () ;
 int stderr ;

int main(int argc, char **argv)
{
 parse_opts(argc, argv);

 if (cfg_do_ipv4)
  run_test_v4();
 if (cfg_do_ipv6)
  run_test_v6();

 fprintf(stderr, "OK\n");
 return 0;
}
