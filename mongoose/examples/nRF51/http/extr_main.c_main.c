
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {int dummy; } ;
struct mg_connection {int dummy; } ;
struct mg_bind_opts {char const** error_string; } ;
typedef int opts ;


 int bleconfig_init () ;
 int bleconfig_poll () ;
 int cs_log_set_file (int ) ;
 int ev_handler ;
 int memset (struct mg_bind_opts*,int,int) ;
 struct mg_connection* mg_bind_opt (struct mg_mgr*,char*,int ,struct mg_bind_opts) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_mgr_poll (struct mg_mgr*,int ) ;
 int mg_set_protocol_http_websocket (struct mg_connection*) ;
 int printf (char*,char const*) ;
 int stdout ;

int main(void) {
  cs_log_set_file(stdout);

  bleconfig_init();

  {
    struct mg_mgr mgr;

    mg_mgr_init(&mgr, ((void*)0));



    const char *err;
    struct mg_bind_opts opts;
    struct mg_connection *nc = ((void*)0);
    memset(&opts, 0x00, sizeof(opts));
    opts.error_string = &err;
    nc = mg_bind_opt(
        &mgr, "80", ev_handler,
        opts);
    if (nc == ((void*)0)) {
      printf("Failed to create listener: %s\n", err);
      return 1;
    }
    mg_set_protocol_http_websocket(nc);

    for (;;) {
      bleconfig_poll();
      mg_mgr_poll(&mgr, 0);
    }
  }
}
