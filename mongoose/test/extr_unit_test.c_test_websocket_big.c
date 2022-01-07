
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {int dummy; } ;
struct mg_connection {struct big_payload_params* user_data; } ;
struct big_payload_params {char* buf; int size; } ;


 int ASSERT (int ) ;
 int ASSERT_STREQ (char*,char*) ;
 int c_str_ne ;
 int cb3_big ;
 int cb4_big ;
 struct mg_connection* mg_bind (struct mg_mgr*,char const*,int ) ;
 struct mg_connection* mg_connect (struct mg_mgr*,char const*,int ) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_send_websocket_handshake (struct mg_connection*,char*,int *) ;
 int mg_set_protocol_http_websocket (struct mg_connection*) ;
 int poll_until (struct mg_mgr*,int,int ,char*,void*) ;

__attribute__((used)) static const char *test_websocket_big(void) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  const char *local_addr = "127.0.0.1:7778";
  char buf[20] = "";
  struct big_payload_params params;
  params.buf = buf;

  mg_mgr_init(&mgr, ((void*)0));

  ASSERT((nc = mg_bind(&mgr, local_addr, cb3_big)) != ((void*)0));
  mg_set_protocol_http_websocket(nc);


  ASSERT((nc = mg_connect(&mgr, local_addr, cb4_big)) != ((void*)0));
  mg_set_protocol_http_websocket(nc);
  params.size = 8192;
  nc->user_data = &params;
  params.buf[0] = '\0';
  mg_send_websocket_handshake(nc, "/ws", ((void*)0));
  poll_until(&mgr, 1, c_str_ne, params.buf, (void *) "");


  ASSERT_STREQ(buf, "success");


  ASSERT((nc = mg_connect(&mgr, local_addr, cb4_big)) != ((void*)0));
  mg_set_protocol_http_websocket(nc);
  params.size = 65535;
  nc->user_data = &params;
  params.buf[0] = '\0';
  mg_send_websocket_handshake(nc, "/ws", ((void*)0));
  poll_until(&mgr, 1, c_str_ne, params.buf, (void *) "");
  mg_mgr_free(&mgr);


  ASSERT_STREQ(buf, "success");

  return ((void*)0);
}
