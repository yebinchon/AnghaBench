
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flag; } ;


 int SIGUSR1 ;
 void* atoi (char*) ;
 int bench_proc ;
 int chdir (char*) ;
 int cpu ;
 scalar_t__ do_exec ;
 scalar_t__ do_fork ;
 scalar_t__ do_vfork ;
 char* exec_file ;
 scalar_t__ exec_target ;
 int exit (int) ;
 char getopt_long (int,char**,char*,TYPE_1__*,int*) ;
 int getpid () ;
 char* optarg ;
 int optind ;
 TYPE_1__* options ;
 int perror (char*) ;
 int printf (char*,...) ;
 int set_cpu (int) ;
 int setpgid (int ,int ) ;
 int signal (int ,int ) ;
 int sigusr1_handler ;
 int sleep (int) ;
 int start_process_on (int ,int *,int) ;
 char* strdup (char*) ;
 int strlen (char*) ;
 void* timeout ;
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

  case 's':
   timeout = atoi(optarg);
   break;

  default:
   usage();
   exit(1);
  }
 }

 if (do_fork && do_vfork) {
  usage();
  exit(1);
 }
 if (do_exec && !do_fork && !do_vfork) {
  usage();
  exit(1);
 }

 if (do_exec) {
  char *dirname = strdup(argv[0]);
  int i;
  i = strlen(dirname) - 1;
  while (i) {
   if (dirname[i] == '/') {
    dirname[i] = '\0';
    if (chdir(dirname) == -1) {
     perror("chdir");
     exit(1);
    }
    break;
   }
   i--;
  }
 }

 if (exec_target) {
  exit(0);
 }

 if (((argc - optind) != 1)) {
  cpu = -1;
 } else {
  cpu = atoi(argv[optind++]);
 }

 if (do_exec)
  exec_file = argv[0];

 set_cpu(cpu);

 printf("Using ");
 if (do_fork)
  printf("fork");
 else if (do_vfork)
  printf("vfork");
 else
  printf("clone");

 if (do_exec)
  printf(" + exec");

 printf(" on cpu %d\n", cpu);


 setpgid(getpid(), getpid());

 signal(SIGUSR1, sigusr1_handler);

 start_process_on(bench_proc, ((void*)0), cpu);

 while (1)
  sleep(3600);

 return 0;
}
