
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; void (* run_client ) (unsigned int) ;void (* run_server ) (unsigned int) ;} ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int TEST_MODE_CLIENT ;
 int TEST_MODE_SERVER ;
 int TEST_MODE_UNSET ;
 unsigned int VMADDR_CID_ANY ;
 int control_cleanup () ;
 int control_init (char const*,char const*,int) ;
 int fflush (int ) ;
 int fprintf (int ,char*) ;
 int getopt_long (int,char**,int ,int ,int *) ;
 int init_signals () ;
 int longopts ;
 char* optarg ;
 int optstring ;
 unsigned int parse_cid (char*) ;
 int printf (char*,...) ;
 int stderr ;
 int stdout ;
 int strcmp (char*,char*) ;
 TYPE_1__* test_cases ;
 int usage () ;

int main(int argc, char **argv)
{
 const char *control_host = ((void*)0);
 const char *control_port = ((void*)0);
 int mode = TEST_MODE_UNSET;
 unsigned int peer_cid = VMADDR_CID_ANY;
 int i;

 init_signals();

 for (;;) {
  int opt = getopt_long(argc, argv, optstring, longopts, ((void*)0));

  if (opt == -1)
   break;

  switch (opt) {
  case 'H':
   control_host = optarg;
   break;
  case 'm':
   if (strcmp(optarg, "client") == 0)
    mode = TEST_MODE_CLIENT;
   else if (strcmp(optarg, "server") == 0)
    mode = TEST_MODE_SERVER;
   else {
    fprintf(stderr, "--mode must be \"client\" or \"server\"\n");
    return EXIT_FAILURE;
   }
   break;
  case 'p':
   peer_cid = parse_cid(optarg);
   break;
  case 'P':
   control_port = optarg;
   break;
  case '?':
  default:
   usage();
  }
 }

 if (!control_port)
  usage();
 if (mode == TEST_MODE_UNSET)
  usage();
 if (peer_cid == VMADDR_CID_ANY)
  usage();

 if (!control_host) {
  if (mode != TEST_MODE_SERVER)
   usage();
  control_host = "0.0.0.0";
 }

 control_init(control_host, control_port, mode == TEST_MODE_SERVER);

 for (i = 0; test_cases[i].name; i++) {
  void (*run)(unsigned int peer_cid);

  printf("%s...", test_cases[i].name);
  fflush(stdout);

  if (mode == TEST_MODE_CLIENT)
   run = test_cases[i].run_client;
  else
   run = test_cases[i].run_server;

  if (run)
   run(peer_cid);

  printf("ok\n");
 }

 control_cleanup();
 return EXIT_SUCCESS;
}
