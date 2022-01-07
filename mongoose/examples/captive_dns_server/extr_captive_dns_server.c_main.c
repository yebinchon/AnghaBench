
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {char* hexdump_file; } ;
struct mg_connection {int dummy; } ;


 int ev_handler ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int inet_addr (char*) ;
 struct mg_connection* mg_bind (struct mg_mgr*,char*,int ) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_mgr_poll (struct mg_mgr*,int) ;
 int mg_set_protocol_dns (struct mg_connection*) ;
 scalar_t__ s_exit_flag ;
 char* s_listening_addr ;
 int s_our_ip_addr ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;

int main(int argc, char *argv[]) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  int i;

  mg_mgr_init(&mgr, ((void*)0));
  s_our_ip_addr = inet_addr("127.0.0.1");


  for (i = 1; i < argc; i++) {
    if (strcmp(argv[i], "-D") == 0) {
      mgr.hexdump_file = argv[++i];
    } else if (strcmp(argv[i], "-l") == 0 && i + 1 < argc) {
      s_listening_addr = argv[++i];
    } else {
      s_our_ip_addr = inet_addr(argv[i]);
    }
  }

  fprintf(stderr, "Listening on '%s'\n", s_listening_addr);
  if ((nc = mg_bind(&mgr, s_listening_addr, ev_handler)) == ((void*)0)) {
    fprintf(stderr, "cannot bind to socket\n");
    exit(1);
  }
  mg_set_protocol_dns(nc);

  while (s_exit_flag == 0) {
    mg_mgr_poll(&mgr, 1000);
  }
  mg_mgr_free(&mgr);

  return 0;
}
