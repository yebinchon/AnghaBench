
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mg_mgr {char* hexdump_file; } ;
struct mg_connection {int dummy; } ;
struct TYPE_4__ {char* document_root; } ;
struct TYPE_3__ {char* document_root; char* url_rewrites; } ;


 int backend_handler ;
 int frontend_handler ;
 struct mg_connection* mg_bind (struct mg_mgr*,char*,int ) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_mgr_poll (struct mg_mgr*,int) ;
 int mg_set_protocol_http_websocket (struct mg_connection*) ;
 int printf (char*,char*) ;
 char* s_backend_port ;
 TYPE_2__ s_backend_server_opts ;
 char* s_frontend_port ;
 TYPE_1__ s_frontend_server_opts ;
 scalar_t__ strcmp (char*,char*) ;

int main(int argc, char *argv[]) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  int i;


  mg_mgr_init(&mgr, ((void*)0));


  nc = mg_bind(&mgr, s_frontend_port, frontend_handler);
  mg_set_protocol_http_websocket(nc);

  s_frontend_server_opts.document_root = "frontend";
  s_frontend_server_opts.url_rewrites =
      "/api=http://localhost:8001,/=frontend/hello.html";


  nc = mg_bind(&mgr, s_backend_port, backend_handler);
  mg_set_protocol_http_websocket(nc);

  s_backend_server_opts.document_root = "backend";


  for (i = 1; i < argc; i++) {
    if (strcmp(argv[i], "-D") == 0) {
      mgr.hexdump_file = argv[++i];
    } else if (strcmp(argv[i], "-r") == 0) {
      s_frontend_server_opts.document_root = argv[++i];
    }
  }

  printf("Starting web server on port %s\n", s_frontend_port);
  for (;;) {
    mg_mgr_poll(&mgr, 1000);
  }
}
