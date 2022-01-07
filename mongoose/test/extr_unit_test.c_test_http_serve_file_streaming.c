
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {int dummy; } ;
struct mg_connection {int* user_data; } ;


 int ASSERT (int ) ;
 int ASSERT_EQ (int,int) ;
 int c_int_ne ;
 struct mg_connection* mg_bind (struct mg_mgr*,char const*,int ) ;
 struct mg_connection* mg_connect (struct mg_mgr*,char const*,int ) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_printf (struct mg_connection*,char*) ;
 int mg_set_protocol_http_websocket (struct mg_connection*) ;
 int poll_until (struct mg_mgr*,int,int ,int*,void*) ;
 int srv1 ;
 int srv2 ;

__attribute__((used)) static const char *test_http_serve_file_streaming(void) {
  struct mg_mgr mgr;
  struct mg_connection *lc, *nc;
  const char *local_addr = "127.0.0.1:7732";
  int status = 0;
  mg_mgr_init(&mgr, ((void*)0));
  ASSERT((lc = mg_bind(&mgr, local_addr, srv1)) != ((void*)0));
  mg_set_protocol_http_websocket(lc);
  ASSERT((nc = mg_connect(&mgr, local_addr, srv2)) != ((void*)0));
  mg_set_protocol_http_websocket(nc);
  nc->user_data = &status;
  mg_printf(nc, "GET / HTTP/1.0\r\n\r\n");
  poll_until(&mgr, 30, c_int_ne, &status, (void *) 0);
  ASSERT_EQ(status, 1);
  mg_mgr_free(&mgr);
  return ((void*)0);
}
