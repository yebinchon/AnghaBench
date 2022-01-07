
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mg_mgr {char* hexdump_file; } ;
struct mg_connection {int dummy; } ;
struct TYPE_2__ {char* document_root; } ;


 int EXIT_FAILURE ;
 int SIGINT ;
 int SIGTERM ;
 int db_close (int **) ;
 int * db_open (char*) ;
 int ev_handler ;
 int exit (int ) ;
 int fprintf (int ,char*,char*) ;
 struct mg_connection* mg_bind (struct mg_mgr*,char*,int ) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_mgr_poll (struct mg_mgr*,int) ;
 int mg_set_protocol_http_websocket (struct mg_connection*) ;
 int printf (char*,scalar_t__) ;
 int * s_db_handle ;
 char* s_db_path ;
 char* s_http_port ;
 TYPE_1__ s_http_server_opts ;
 scalar_t__ s_sig_num ;
 int signal (int ,int ) ;
 int signal_handler ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;

int main(int argc, char *argv[]) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  int i;


  mg_mgr_init(&mgr, ((void*)0));
  nc = mg_bind(&mgr, s_http_port, ev_handler);
  mg_set_protocol_http_websocket(nc);
  s_http_server_opts.document_root = "web_root";


  for (i = 1; i < argc; i++) {
    if (strcmp(argv[i], "-D") == 0) {
      mgr.hexdump_file = argv[++i];
    } else if (strcmp(argv[i], "-f") == 0) {
      s_db_path = argv[++i];
    } else if (strcmp(argv[i], "-r") == 0) {
      s_http_server_opts.document_root = argv[++i];
    }
  }

  signal(SIGINT, signal_handler);
  signal(SIGTERM, signal_handler);


  if ((s_db_handle = db_open(s_db_path)) == ((void*)0)) {
    fprintf(stderr, "Cannot open DB [%s]\n", s_db_path);
    exit(EXIT_FAILURE);
  }


  printf("Starting RESTful server on port %s\n", s_http_port);
  while (s_sig_num == 0) {
    mg_mgr_poll(&mgr, 1000);
  }


  mg_mgr_free(&mgr);
  db_close(&s_db_handle);

  printf("Exiting on signal %d\n", s_sig_num);

  return 0;
}
