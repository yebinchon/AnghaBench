
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct ead_instance {int id; int list; int ifname; } ;


 int INIT_LIST_HEAD (int *) ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDWR ;
 int O_WRONLY ;
 int SIGCHLD ;
 int SIGINT ;
 int SIGKILL ;
 int SIGTERM ;
 int br_init () ;
 int br_shutdown () ;
 int check_all_interfaces () ;
 int close (int) ;
 void* dev_name ;
 int dup2 (int,int) ;
 scalar_t__ ethmac ;
 int exit (int ) ;
 scalar_t__ fork () ;
 int fprintf (int ,char*) ;
 int get_random_bytes (scalar_t__,int) ;
 int getopt (int,char**,char*) ;
 int getpid () ;
 int instances ;
 int list_add (int *,int *) ;
 struct ead_instance* malloc (int) ;
 int memset (struct ead_instance*,int ,int) ;
 int nid ;
 int nonfork ;
 int open (char const*,int,...) ;
 void* optarg ;
 void* passwd_file ;
 int server_handle_sigchld ;
 int server_handle_sigint ;
 int signal (int ,int ) ;
 int sleep (int) ;
 int sprintf (char*,char*,int) ;
 int start_servers (int) ;
 int stderr ;
 int strncpy (int ,void*,int) ;
 int unlink (char const*) ;
 int usage (char*) ;
 int write (int,char*,int) ;

int main(int argc, char **argv)
{
 struct ead_instance *in;
 struct timeval tv;
 const char *pidfile = ((void*)0);
 bool background = 0;
 int n_iface = 0;
 int fd, ch;

 if (argc == 1)
  return usage(argv[0]);

 INIT_LIST_HEAD(&instances);
 while ((ch = getopt(argc, argv, "Bd:D:fhp:P:")) != -1) {
  switch(ch) {
  case 'B':
   background = 1;
   break;
  case 'f':
   nonfork = 1;
   break;
  case 'h':
   return usage(argv[0]);
  case 'd':
   in = malloc(sizeof(struct ead_instance));
   memset(in, 0, sizeof(struct ead_instance));
   INIT_LIST_HEAD(&in->list);
   strncpy(in->ifname, optarg, sizeof(in->ifname) - 1);
   list_add(&in->list, &instances);
   in->id = n_iface++;
   break;
  case 'D':
   dev_name = optarg;
   break;
  case 'p':
   passwd_file = optarg;
   break;
  case 'P':
   pidfile = optarg;
   break;
  }
 }
 signal(SIGCHLD, server_handle_sigchld);
 signal(SIGINT, server_handle_sigint);
 signal(SIGTERM, server_handle_sigint);
 signal(SIGKILL, server_handle_sigint);

 if (!n_iface) {
  fprintf(stderr, "Error: ead needs at least one interface\n");
  return -1;
 }

 if (background) {
  if (fork() > 0)
   exit(0);

  fd = open("/dev/null", O_RDWR);
  dup2(fd, 0);
  dup2(fd, 1);
  dup2(fd, 2);
 }

 if (pidfile) {
  char pid[8];
  int len;

  unlink(pidfile);
  fd = open(pidfile, O_CREAT|O_WRONLY|O_EXCL, 0644);
  if (fd > 0) {
   len = sprintf(pid, "%d\n", getpid());
   write(fd, pid, len);
   close(fd);
  }
 }


 get_random_bytes(ethmac + 3, 3);
 nid = *(((u16_t *) ethmac) + 2);

 start_servers(0);
 br_init();
 tv.tv_sec = 1;
 tv.tv_usec = 0;
 while (1) {
  check_all_interfaces();
  start_servers(1);
  sleep(1);
 }
 br_shutdown();

 return 0;
}
