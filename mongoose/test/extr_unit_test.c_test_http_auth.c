
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {int dummy; } ;
struct mg_connection {int* user_data; } ;


 int ASSERT_EQ (int,int) ;
 int c_int_eq ;
 struct mg_connection* mg_bind (struct mg_mgr*,char*,int ) ;
 int mg_connect_http (struct mg_mgr*,int ,char*,int *,int *) ;
 int mg_connect_ws (struct mg_mgr*,int ,char*,char*,int *) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_set_protocol_http_websocket (struct mg_connection*) ;
 int poll_until (struct mg_mgr*,int,int ,int*,void*) ;
 int test_auth_client_handler ;
 int test_auth_server_handler ;

__attribute__((used)) static const char *test_http_auth() {
  int connected;
  struct mg_connection *nc;
  struct mg_mgr mgr;
  mg_mgr_init(&mgr, ((void*)0));

  nc = mg_bind(&mgr, "127.0.0.1:1234", test_auth_server_handler);
  mg_set_protocol_http_websocket(nc);
  nc->user_data = &connected;

  connected = 0;
  mg_connect_http(&mgr, test_auth_client_handler,
                  "http://foo:bar@127.0.0.1:1234", ((void*)0), ((void*)0));
  poll_until(&mgr, 4, c_int_eq, &connected, (void *) 1);
  ASSERT_EQ(connected, 1);

  connected = 0;
  mg_connect_ws(&mgr, test_auth_client_handler, "ws://foo:bar@127.0.0.1:1234",
                ((void*)0), ((void*)0));
  poll_until(&mgr, 4, c_int_eq, &connected, (void *) 1);
  ASSERT_EQ(connected, 1);


  connected = 0;
  mg_connect_ws(&mgr, test_auth_client_handler, "ws://127.0.0.1:1234",
                "myproto", ((void*)0));
  poll_until(&mgr, 4, c_int_eq, &connected, (void *) 2);
  ASSERT_EQ(connected, 2);

  mg_mgr_free(&mgr);
  return ((void*)0);
}
