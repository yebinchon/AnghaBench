
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mg_mgr {char* hexdump_file; } ;
struct mg_connection {int dummy; } ;
struct mg_bind_opts {char const** error_string; char const* ssl_cert; } ;
typedef int bind_opts ;
struct TYPE_2__ {char* document_root; char* auth_domain; char* global_auth_file; char* per_directory_auth_file; char* url_rewrites; char* cgi_interpreter; char* enable_directory_listing; } ;


 int DIRSEP ;
 int ev_handler ;
 int exit (int) ;
 int fprintf (int ,char*,char*,...) ;
 int memset (struct mg_bind_opts*,int ,int) ;
 struct mg_connection* mg_bind_opt (struct mg_mgr*,char*,int ,struct mg_bind_opts) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_mgr_poll (struct mg_mgr*,int) ;
 int mg_set_protocol_http_websocket (struct mg_connection*) ;
 int printf (char*,char*,char*) ;
 char* s_http_port ;
 TYPE_1__ s_http_server_opts ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 char* strrchr (char*,int ) ;

int main(int argc, char *argv[]) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  struct mg_bind_opts bind_opts;
  int i;
  char *cp;
  const char *err_str;




  mg_mgr_init(&mgr, ((void*)0));


  if (argc > 0 && ((cp = strrchr(argv[0], DIRSEP)) != ((void*)0))) {
    *cp = '\0';
    s_http_server_opts.document_root = argv[0];
  }


  for (i = 1; i < argc; i++) {
    if (strcmp(argv[i], "-D") == 0 && i + 1 < argc) {
      mgr.hexdump_file = argv[++i];
    } else if (strcmp(argv[i], "-d") == 0 && i + 1 < argc) {
      s_http_server_opts.document_root = argv[++i];
    } else if (strcmp(argv[i], "-p") == 0 && i + 1 < argc) {
      s_http_port = argv[++i];
    } else if (strcmp(argv[i], "-a") == 0 && i + 1 < argc) {
      s_http_server_opts.auth_domain = argv[++i];
    } else if (strcmp(argv[i], "-P") == 0 && i + 1 < argc) {
      s_http_server_opts.global_auth_file = argv[++i];
    } else if (strcmp(argv[i], "-A") == 0 && i + 1 < argc) {
      s_http_server_opts.per_directory_auth_file = argv[++i];
    } else if (strcmp(argv[i], "-r") == 0 && i + 1 < argc) {
      s_http_server_opts.url_rewrites = argv[++i];
    } else {
      fprintf(stderr, "Unknown option: [%s]\n", argv[i]);
      exit(1);
    }
  }


  memset(&bind_opts, 0, sizeof(bind_opts));
  bind_opts.error_string = &err_str;





  nc = mg_bind_opt(&mgr, s_http_port, ev_handler, bind_opts);
  if (nc == ((void*)0)) {
    fprintf(stderr, "Error starting server on port %s: %s\n", s_http_port,
            *bind_opts.error_string);
    exit(1);
  }

  mg_set_protocol_http_websocket(nc);
  s_http_server_opts.enable_directory_listing = "yes";

  printf("Starting RESTful server on port %s, serving %s\n", s_http_port,
         s_http_server_opts.document_root);
  for (;;) {
    mg_mgr_poll(&mgr, 1000);
  }
  mg_mgr_free(&mgr);

  return 0;
}
