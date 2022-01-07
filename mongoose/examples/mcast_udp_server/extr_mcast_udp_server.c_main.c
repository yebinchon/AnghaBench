
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mg_mgr {int dummy; } ;
struct mg_connection {int sock; } ;
struct TYPE_4__ {void* s_addr; } ;
struct TYPE_3__ {void* s_addr; } ;
struct ip_mreq {TYPE_2__ imr_interface; TYPE_1__ imr_multiaddr; } ;
typedef int listen ;
typedef int group ;


 int IPPROTO_IP ;
 int IP_ADD_MEMBERSHIP ;
 char* MCAST_GROUP ;
 int ev_handler ;
 int exit (int) ;
 void* inet_addr (char const*) ;
 struct mg_connection* mg_bind (struct mg_mgr*,char*,int ) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_mgr_poll (struct mg_mgr*,int) ;
 int perror (char*) ;
 int printf (char*,char const*,char const*) ;
 scalar_t__ setsockopt (int ,int ,int ,char*,int) ;
 int snprintf (char*,int,char*,char const*) ;
 scalar_t__ strcmp (char*,char*) ;
 int usage (char**) ;

int main(int argc, char **argv) {
  struct mg_mgr mgr;
  const char *port = "1234";
  struct mg_connection *nc;
  struct ip_mreq group;
  const char *interface = ((void*)0);
  const char *mcast_group = MCAST_GROUP;
  int i;


  for (i = 1; i < argc; i++) {

    if (strcmp(argv[i], "-i") == 0) {
      interface = argv[++i];
    } else if (strcmp(argv[i], "-g") == 0) {
      mcast_group = argv[++i];
    } else if (strcmp(argv[i], "-p") == 0) {
      port = argv[++i];
    }
  }

  if (interface == ((void*)0)) {
    usage(argv);
  }

  mg_mgr_init(&mgr, ((void*)0));
  {
    char listen[256];
    snprintf(listen, sizeof(listen), "udp://%s", port);
    nc = mg_bind(&mgr, listen, ev_handler);
  }

  if (nc == ((void*)0)) {
    perror("cannot bind\n");
    exit(1);
  }

  group.imr_multiaddr.s_addr = inet_addr(mcast_group);
  group.imr_interface.s_addr = inet_addr(interface);
  if (setsockopt(nc->sock, IPPROTO_IP, IP_ADD_MEMBERSHIP, (char *) &group,
                 sizeof(group)) < 0) {
    perror("Adding multicast group error");
    exit(1);
  }

  printf("Starting mcast server on port %s listening to group %s\n", port,
         mcast_group);
  for (;;) {
    mg_mgr_poll(&mgr, 1000);
  }
  mg_mgr_free(&mgr);

  return 0;
}
