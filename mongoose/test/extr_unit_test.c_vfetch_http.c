
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct mg_mgr {int dummy; } ;
struct mg_http_endpoint_opts {char const* auth_file; char* auth_domain; } ;
struct mg_connection {char* user_data; } ;
typedef int local_addr ;
typedef int ep_opts ;


 int c_str_ne ;
 int cb1 ;
 int cb8 ;
 int memset (struct mg_http_endpoint_opts*,int ,int) ;
 struct mg_connection* mg_bind (struct mg_mgr*,char*,int ) ;
 struct mg_connection* mg_connect (struct mg_mgr*,char*,int ) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_register_http_endpoint_opt (struct mg_connection*,char*,int ,struct mg_http_endpoint_opts) ;
 int mg_set_protocol_http_websocket (struct mg_connection*) ;
 int mg_vprintf (struct mg_connection*,char const*,int ) ;
 int poll_until (struct mg_mgr*,int,int ,char*,void*) ;
 int s_listening_port ;
 int secret_endpoint_cb ;
 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static void vfetch_http(char *buf, const char *auth_file,
                        const char *request_fmt, va_list ap) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  struct mg_http_endpoint_opts ep_opts;
  char local_addr[50];


  mg_mgr_init(&mgr, ((void*)0));

  snprintf(local_addr, sizeof(local_addr), "127.0.0.1:%d", s_listening_port++);
  nc = mg_bind(&mgr, local_addr, cb1);
  mg_set_protocol_http_websocket(nc);
  memset(&ep_opts, 0, sizeof(ep_opts));
  ep_opts.auth_file = auth_file;
  ep_opts.auth_domain = "foo.com";
  mg_register_http_endpoint_opt(nc, "/secret", secret_endpoint_cb, ep_opts);


  nc = mg_connect(&mgr, local_addr, cb8);
  mg_set_protocol_http_websocket(nc);
  nc->user_data = buf;
  mg_vprintf(nc, request_fmt, ap);


  buf[0] = '\0';
  poll_until(&mgr, 5, c_str_ne, buf, (void *) "");

  mg_mgr_free(&mgr);
}
