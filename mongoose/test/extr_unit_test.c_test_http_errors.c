
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mg_mgr {int dummy; } ;
struct mg_connection {char* user_data; } ;
struct TYPE_2__ {int * enable_directory_listing; } ;


 int ASSERT (int ) ;
 int ASSERT_STREQ_NZ (char*,char*) ;
 int c_str_ne ;
 int cb1 ;
 int cb8 ;
 struct mg_connection* mg_bind (struct mg_mgr*,char const*,int ) ;
 struct mg_connection* mg_connect (struct mg_mgr*,char const*,int ) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_printf (struct mg_connection*,char*,char*) ;
 int mg_set_protocol_http_websocket (struct mg_connection*) ;
 int poll_until (struct mg_mgr*,int,int ,char*,void*) ;
 TYPE_1__ s_http_server_opts ;
 int system (char*) ;

__attribute__((used)) static const char *test_http_errors(void) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  const char *local_addr = "127.0.0.1:7777";
  char status[1000] = "";

  mg_mgr_init(&mgr, ((void*)0));
  s_http_server_opts.enable_directory_listing = ((void*)0);
  ASSERT((nc = mg_bind(&mgr, local_addr, cb1)) != ((void*)0));
  mg_set_protocol_http_websocket(nc);



  ASSERT((nc = mg_connect(&mgr, local_addr, cb8)) != ((void*)0));
  mg_set_protocol_http_websocket(nc);
  nc->user_data = status;
  system("touch test_unreadable; chmod 000 test_unreadable");
  mg_printf(nc, "GET /%s HTTP/1.0\n\n", "../test_unreadable");


  poll_until(&mgr, 1, c_str_ne, status, (void *) "");
  system("rm -f test_unreadable");


  ASSERT_STREQ_NZ(status, "HTTP/1.1 403");



  ASSERT((nc = mg_connect(&mgr, local_addr, cb8)) != ((void*)0));
  mg_set_protocol_http_websocket(nc);
  status[0] = '\0';
  nc->user_data = status;
  mg_printf(nc, "GET /%s HTTP/1.0\n\n", "/please_dont_create_this_file_srsly");

  poll_until(&mgr, 1, c_str_ne, status, (void *) "");


  ASSERT_STREQ_NZ(status, "HTTP/1.1 404");


  mg_mgr_free(&mgr);

  return ((void*)0);
}
