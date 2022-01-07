
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET ;
 int AF_INET6 ;
 int O_RDWR ;
 char* PROC_FASTOPEN_KEY ;
 int close (scalar_t__) ;
 scalar_t__ do_ipv6 ;
 int errno ;
 int error (int,int ,char*,char*) ;
 int fprintf (int ,char*) ;
 scalar_t__ open (char*,int ) ;
 int parse_opts (int,char**) ;
 scalar_t__ proc_fd ;
 int run_one_test (int ) ;
 int srand (int ) ;
 int stderr ;
 int time (int *) ;

int main(int argc, char **argv)
{
 parse_opts(argc, argv);
 proc_fd = open(PROC_FASTOPEN_KEY, O_RDWR);
 if (proc_fd < 0)
  error(1, errno, "Unable to open %s", PROC_FASTOPEN_KEY);
 srand(time(((void*)0)));
 if (do_ipv6)
  run_one_test(AF_INET6);
 else
  run_one_test(AF_INET);
 close(proc_fd);
 fprintf(stderr, "PASS\n");
 return 0;
}
