
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {int dummy; } ;
struct mg_connection {int dummy; } ;


 int ASSERT (struct mg_connection*) ;
 int ASSERT_EQ (int,int) ;
 int c_int_eq ;
 int http_pipeline_handler ;
 struct mg_connection* mg_bind (struct mg_mgr*,char const*,int ) ;
 struct mg_connection* mg_connect (struct mg_mgr*,char const*,int ) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,void*) ;
 int mg_printf (struct mg_connection*,char*) ;
 int mg_set_protocol_http_websocket (struct mg_connection*) ;
 int poll_until (struct mg_mgr*,int,int ,int*,void*) ;

__attribute__((used)) static const char *test_http_pipeline(void) {
  struct mg_mgr mgr;
  struct mg_connection *lc, *nc1;
  const char *local_addr = "127.0.0.1:7777";
  int status = 0;

  mg_mgr_init(&mgr, (void *) &status);
  ASSERT(lc = mg_bind(&mgr, local_addr, http_pipeline_handler));
  mg_set_protocol_http_websocket(lc);
  ASSERT(nc1 = mg_connect(&mgr, local_addr, http_pipeline_handler));
  mg_set_protocol_http_websocket(nc1);
  mg_printf(nc1, "GET / HTTP/1.1\r\n\r\nGET / HTTP/1.1\r\n\r\n");
  poll_until(&mgr, 1, c_int_eq, &status, (void *) 22);
  ASSERT_EQ(status, 22);
  mg_mgr_free(&mgr);
  return ((void*)0);
}
