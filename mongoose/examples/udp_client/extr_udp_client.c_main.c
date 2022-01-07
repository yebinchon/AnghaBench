
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {int dummy; } ;
struct mg_connection {int dummy; } ;
typedef int addr ;


 int ADDR_BUF_SIZE ;
 int EXIT_FAILURE ;
 int ev_handler ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 struct mg_connection* mg_connect (struct mg_mgr*,char*,int ) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_mgr_poll (struct mg_mgr*,int) ;
 int mg_send (struct mg_connection*,char*,int ) ;
 int snprintf (char*,int,char*,char*) ;
 int stderr ;
 int strlen (char*) ;

int main(int argc, char *argv[]) {
  struct mg_mgr mgr;
  char addr[ADDR_BUF_SIZE];

  mg_mgr_init(&mgr, ((void*)0));

  if (argc != 3) {
    fprintf(stderr, "Usage: %s <server:port> <data>\n", argv[0]);
    exit(EXIT_FAILURE);
  }

  snprintf(addr, sizeof(addr), "udp://%s", argv[1]);

  fprintf(stderr, "Connecting to '%s'\n", addr);

  struct mg_connection *nc = mg_connect(&mgr, addr, ev_handler);

  if (nc == ((void*)0)) {
    fprintf(stderr, "Failed to connect");
    exit(1);
  }

  fprintf(stderr, "Sending '%s'\n", argv[2]);

  mg_send(nc, argv[2], strlen(argv[2]));

  fprintf(stderr, "Waiting for data\n");

  for (;;) {
    mg_mgr_poll(&mgr, 10);
  }
  mg_mgr_free(&mgr);

  return 0;
}
