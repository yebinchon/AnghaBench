
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
struct addrinfo {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; struct addrinfo* ai_next; } ;


 int EXIT_FAILURE ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 scalar_t__ accept (int,int *,int ) ;
 scalar_t__ bind (int,int ,int ) ;
 int close (int) ;
 scalar_t__ connect (int,int ,int ) ;
 scalar_t__ control_fd ;
 int exit (int ) ;
 int fflush (int ) ;
 int fprintf (int ,char*,char const*,...) ;
 int freeaddrinfo (struct addrinfo*) ;
 char* gai_strerror (int) ;
 int getaddrinfo (char const*,char const*,struct addrinfo*,struct addrinfo**) ;
 scalar_t__ listen (int,int) ;
 int perror (char*) ;
 int printf (char*,...) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;
 int stderr ;
 int stdout ;

void control_init(const char *control_host,
    const char *control_port,
    bool server)
{
 struct addrinfo hints = {
  .ai_socktype = SOCK_STREAM,
 };
 struct addrinfo *result = ((void*)0);
 struct addrinfo *ai;
 int ret;

 ret = getaddrinfo(control_host, control_port, &hints, &result);
 if (ret != 0) {
  fprintf(stderr, "%s\n", gai_strerror(ret));
  exit(EXIT_FAILURE);
 }

 for (ai = result; ai; ai = ai->ai_next) {
  int fd;
  int val = 1;

  fd = socket(ai->ai_family, ai->ai_socktype, ai->ai_protocol);
  if (fd < 0)
   continue;

  if (!server) {
   if (connect(fd, ai->ai_addr, ai->ai_addrlen) < 0)
    goto next;
   control_fd = fd;
   printf("Control socket connected to %s:%s.\n",
          control_host, control_port);
   break;
  }

  if (setsockopt(fd, SOL_SOCKET, SO_REUSEADDR,
          &val, sizeof(val)) < 0) {
   perror("setsockopt");
   exit(EXIT_FAILURE);
  }

  if (bind(fd, ai->ai_addr, ai->ai_addrlen) < 0)
   goto next;
  if (listen(fd, 1) < 0)
   goto next;

  printf("Control socket listening on %s:%s\n",
         control_host, control_port);
  fflush(stdout);

  control_fd = accept(fd, ((void*)0), 0);
  close(fd);

  if (control_fd < 0) {
   perror("accept");
   exit(EXIT_FAILURE);
  }
  printf("Control socket connection accepted...\n");
  break;

next:
  close(fd);
 }

 if (control_fd < 0) {
  fprintf(stderr, "Control socket initialization failed.  Invalid address %s:%s?\n",
   control_host, control_port);
  exit(EXIT_FAILURE);
 }

 freeaddrinfo(result);
}
