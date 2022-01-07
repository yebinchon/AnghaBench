
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_str {char* p; int len; } ;
struct mg_mgr {int dummy; } ;
struct mg_connection {struct mbuf* user_data; } ;
struct mbuf {scalar_t__ len; int buf; } ;


 int ASSERT (int ) ;
 int ASSERT_EQ (scalar_t__,int) ;
 int ASSERT_STREQ (int ,char const*) ;
 int WEBSOCKET_DONT_FIN ;
 int WEBSOCKET_OP_CLOSE ;
 int WEBSOCKET_OP_CONTINUE ;
 int WEBSOCKET_OP_PING ;
 int WEBSOCKET_OP_TEXT ;
 int c_int_eq ;
 int c_int_ne ;
 int cb_ws_client1 ;
 int cb_ws_server ;
 int mbuf_append (struct mbuf*,char*,int) ;
 int mbuf_free (struct mbuf*) ;
 int mbuf_init (struct mbuf*,int) ;
 struct mg_connection* mg_bind (struct mg_mgr*,char const*,int ) ;
 struct mg_connection* mg_connect (struct mg_mgr*,char const*,int ) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_send_websocket_frame (struct mg_connection*,int,char*,int) ;
 int mg_send_websocket_framev (struct mg_connection*,int,struct mg_str*,int) ;
 int mg_send_websocket_handshake (struct mg_connection*,char*,int *) ;
 int mg_set_protocol_http_websocket (struct mg_connection*) ;
 int poll_until (struct mg_mgr*,int,int ,scalar_t__*,void*) ;
 scalar_t__ s_ws_client1_connected ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static const char *test_websocket(void) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  const char *local_addr = "127.0.0.1:7778";
  struct mbuf mb;
  mbuf_init(&mb, 100);

  mg_mgr_init(&mgr, ((void*)0));

  ASSERT((nc = mg_bind(&mgr, local_addr, cb_ws_server)) != ((void*)0));
  mg_set_protocol_http_websocket(nc);




  mb.len = 0;
  s_ws_client1_connected = 0;
  ASSERT((nc = mg_connect(&mgr, local_addr, cb_ws_client1)) != ((void*)0));
  mg_set_protocol_http_websocket(nc);
  nc->user_data = &mb;
  mg_send_websocket_handshake(nc, "/ws", ((void*)0));
  poll_until(&mgr, 1, c_int_ne, &s_ws_client1_connected, (void *) 1);
  {

    struct mg_str h[2];
    h[0].p = "h";
    h[0].len = 1;
    h[1].p = "i";
    h[1].len = 1;
    mg_send_websocket_framev(nc, WEBSOCKET_OP_TEXT, h, 2);
  }
  poll_until(&mgr, 1, c_int_ne, &mb.len, (void *) 0);
  mbuf_append(&mb, "\0", 1);

  ASSERT_STREQ(mb.buf, "81:[81:{hi}]");




  mb.len = 0;
  s_ws_client1_connected = 0;
  ASSERT((nc = mg_connect(&mgr, local_addr, cb_ws_client1)) != ((void*)0));
  mg_set_protocol_http_websocket(nc);
  nc->user_data = &mb;
  mg_send_websocket_handshake(nc, "/ws", ((void*)0));
  poll_until(&mgr, 1, c_int_ne, &s_ws_client1_connected, (void *) 1);
  ASSERT_EQ(s_ws_client1_connected, 1);

  mg_send_websocket_frame(nc, WEBSOCKET_OP_TEXT | WEBSOCKET_DONT_FIN, "hall",
                          4);
  mg_send_websocket_frame(nc, WEBSOCKET_OP_CONTINUE | WEBSOCKET_DONT_FIN, "--",
                          2);


  poll_until(&mgr, 0.5, c_int_ne, &mb.len, (void *) 0);
  ASSERT_EQ(mb.len, 0);

  mg_send_websocket_frame(nc, WEBSOCKET_OP_CONTINUE, "loo", 3);

  poll_until(&mgr, 1, c_int_ne, &mb.len, (void *) 0);
  mbuf_append(&mb, "\0", 1);

  ASSERT_STREQ(mb.buf, "81:[81:{hall--loo}]");




  mb.len = 0;
  s_ws_client1_connected = 0;
  ASSERT((nc = mg_connect(&mgr, local_addr, cb_ws_client1)) != ((void*)0));
  mg_set_protocol_http_websocket(nc);
  nc->user_data = &mb;
  mg_send_websocket_handshake(nc, "/ws", ((void*)0));
  poll_until(&mgr, 1, c_int_ne, &s_ws_client1_connected, (void *) 1);
  ASSERT_EQ(s_ws_client1_connected, 1);

  mg_send_websocket_frame(nc, WEBSOCKET_OP_PING, "myping", 6);

  {




    const char *expected = "CONTROL:8a:[myping]81:[CONTROL:89:{myping}]";
    poll_until(&mgr, 1, c_int_eq, &mb.len, (void *) strlen(expected));
    mbuf_append(&mb, "\0", 1);
    ASSERT_STREQ(mb.buf, expected);
  }




  mb.len = 0;
  s_ws_client1_connected = 0;
  ASSERT((nc = mg_connect(&mgr, local_addr, cb_ws_client1)) != ((void*)0));
  mg_set_protocol_http_websocket(nc);
  nc->user_data = &mb;
  mg_send_websocket_handshake(nc, "/ws", ((void*)0));
  poll_until(&mgr, 1, c_int_ne, &s_ws_client1_connected, (void *) 1);
  ASSERT_EQ(s_ws_client1_connected, 1);

  mg_send_websocket_frame(nc, WEBSOCKET_OP_TEXT | WEBSOCKET_DONT_FIN, "abc", 3);
  mg_send_websocket_frame(nc, WEBSOCKET_OP_CONTINUE | WEBSOCKET_DONT_FIN, "def",
                          3);

  mg_send_websocket_frame(nc, WEBSOCKET_OP_PING, "0123", 4);

  mg_send_websocket_frame(nc, WEBSOCKET_OP_CONTINUE, "ghi", 3);

  {





    const char *expected =
        "CONTROL:8a:[0123]81:[CONTROL:89:{0123}]81:[81:{abcdefghi}]";
    poll_until(&mgr, 1, c_int_eq, &mb.len, (void *) strlen(expected));
    mbuf_append(&mb, "\0", 1);
    ASSERT_STREQ(mb.buf, expected);
  }




  mb.len = 0;
  s_ws_client1_connected = 0;
  ASSERT((nc = mg_connect(&mgr, local_addr, cb_ws_client1)) != ((void*)0));
  mg_set_protocol_http_websocket(nc);
  nc->user_data = &mb;
  mg_send_websocket_handshake(nc, "/ws", ((void*)0));
  poll_until(&mgr, 1, c_int_ne, &s_ws_client1_connected, (void *) 1);
  ASSERT_EQ(s_ws_client1_connected, 1);


  mg_send_websocket_frame(nc, WEBSOCKET_OP_TEXT | WEBSOCKET_DONT_FIN, "abc", 3);
  mg_send_websocket_frame(nc, WEBSOCKET_OP_CONTINUE | WEBSOCKET_DONT_FIN, "def",
                          3);


  mg_send_websocket_frame(nc, WEBSOCKET_OP_TEXT, "ghi", 3);


  poll_until(&mgr, 1, c_int_ne, &s_ws_client1_connected, (void *) 0);
  ASSERT_EQ(s_ws_client1_connected, 0);


  mbuf_append(&mb, "\0", 1);
  ASSERT_STREQ(
      mb.buf,
      "CONTROL:88:[non-continuation in the middle of a fragmented message]");




  mb.len = 0;
  s_ws_client1_connected = 0;
  ASSERT((nc = mg_connect(&mgr, local_addr, cb_ws_client1)) != ((void*)0));
  mg_set_protocol_http_websocket(nc);
  nc->user_data = &mb;
  mg_send_websocket_handshake(nc, "/ws", ((void*)0));
  poll_until(&mgr, 1, c_int_ne, &s_ws_client1_connected, (void *) 1);
  ASSERT_EQ(s_ws_client1_connected, 1);


  mg_send_websocket_frame(nc, WEBSOCKET_OP_CLOSE, "bye", 3);


  poll_until(&mgr, 1, c_int_ne, &s_ws_client1_connected, (void *) 0);
  ASSERT_EQ(s_ws_client1_connected, 0);







  mg_mgr_free(&mgr);
  mbuf_free(&mb);

  return ((void*)0);
}
