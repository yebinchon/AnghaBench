
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mg_mgr {char* hexdump_file; } ;
struct mg_connection {int dummy; } ;
struct TYPE_2__ {char* document_root; char* enable_directory_listing; } ;


 int ev_handler ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 struct mg_connection* mg_bind (struct mg_mgr*,char*,int ) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_mgr_poll (struct mg_mgr*,int) ;
 int mg_set_protocol_http_websocket (struct mg_connection*) ;
 int printf (char*,char*) ;
 char* s_access_key_id ;
 char* s_http_port ;
 TYPE_1__ s_http_server_opts ;
 char* s_secret_access_key ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 char* strrchr (char*,char) ;

int main(int argc, char *argv[]) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  int i;
  char *cp;

  mg_mgr_init(&mgr, ((void*)0));
  nc = mg_bind(&mgr, s_http_port, ev_handler);
  mg_set_protocol_http_websocket(nc);
  s_http_server_opts.document_root = ".";
  s_http_server_opts.enable_directory_listing = "yes";


  if (argc > 0 && ((cp = strrchr(argv[0], '/')) != ((void*)0) ||
                   (cp = strrchr(argv[0], '/')) != ((void*)0))) {
    *cp = '\0';
    s_http_server_opts.document_root = argv[0];
  }


  for (i = 1; i < argc; i++) {
    if (strcmp(argv[i], "-D") == 0 && i + 1 < argc) {
      mgr.hexdump_file = argv[++i];
    } else if (strcmp(argv[i], "-p") == 0 && i + 1 < argc) {
      s_http_port = argv[++i];
    } else if (strcmp(argv[i], "-a") == 0 && i + 1 < argc) {
      s_access_key_id = argv[++i];
    } else if (strcmp(argv[i], "-s") == 0 && i + 1 < argc) {
      s_secret_access_key = argv[++i];
    }
  }

  if (s_access_key_id == ((void*)0) || s_secret_access_key == ((void*)0)) {
    fprintf(stderr,
            "Usage: %s -a access_key_id -s s_secret_access_key "
            "[-p port] [-D hexdump_file]\n",
            argv[0]);
    exit(1);
  }

  printf("Starting RESTful server on port %s\n", s_http_port);
  for (;;) {
    mg_mgr_poll(&mgr, 1000);
  }
  mg_mgr_free(&mgr);

  return 0;
}
