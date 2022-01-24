#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mg_str {char* p; int len; } ;
struct mg_mgr {int dummy; } ;
struct mg_connection {struct mbuf* user_data; } ;
struct mbuf {scalar_t__ len; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int WEBSOCKET_DONT_FIN ; 
 int WEBSOCKET_OP_CLOSE ; 
 int WEBSOCKET_OP_CONTINUE ; 
 int WEBSOCKET_OP_PING ; 
 int WEBSOCKET_OP_TEXT ; 
 int /*<<< orphan*/  c_int_eq ; 
 int /*<<< orphan*/  c_int_ne ; 
 int /*<<< orphan*/  cb_ws_client1 ; 
 int /*<<< orphan*/  cb_ws_server ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*,int) ; 
 struct mg_connection* FUNC6 (struct mg_mgr*,char const*,int /*<<< orphan*/ ) ; 
 struct mg_connection* FUNC7 (struct mg_mgr*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC9 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct mg_connection*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mg_connection*,int,struct mg_str*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct mg_connection*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC14 (struct mg_mgr*,int,int /*<<< orphan*/ ,scalar_t__*,void*) ; 
 scalar_t__ s_ws_client1_connected ; 
 scalar_t__ FUNC15 (char const*) ; 

__attribute__((used)) static const char *FUNC16(void) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  const char *local_addr = "127.0.0.1:7778";
  struct mbuf mb;
  FUNC5(&mb, 100);

  FUNC9(&mgr, NULL);
  /* mgr.hexdump_file = "-"; */
  FUNC0((nc = FUNC6(&mgr, local_addr, cb_ws_server)) != NULL);
  FUNC13(nc);

  /*
   * Websocket request "hi" via mg_send_websocket_framev()
   */
  mb.len = 0;
  s_ws_client1_connected = 0;
  FUNC0((nc = FUNC7(&mgr, local_addr, cb_ws_client1)) != NULL);
  FUNC13(nc);
  nc->user_data = &mb;
  FUNC12(nc, "/ws", NULL);
  FUNC14(&mgr, 1, c_int_ne, &s_ws_client1_connected, (void *) 1);
  {
    /* Send "hi" to server. server must reply "A". */
    struct mg_str h[2];
    h[0].p = "h";
    h[0].len = 1;
    h[1].p = "i";
    h[1].len = 1;
    FUNC11(nc, WEBSOCKET_OP_TEXT, h, 2);
  }
  FUNC14(&mgr, 1, c_int_ne, &mb.len, (void *) 0);
  FUNC3(&mb, "\0", 1);
  /* Check that test buffer has been filled by the callback properly. */
  FUNC2(mb.buf, "81:[81:{hi}]");

  /*
   * Websocket request "hallloo", composed from two fragments
   */
  mb.len = 0;
  s_ws_client1_connected = 0;
  FUNC0((nc = FUNC7(&mgr, local_addr, cb_ws_client1)) != NULL);
  FUNC13(nc);
  nc->user_data = &mb;
  FUNC12(nc, "/ws", NULL);
  FUNC14(&mgr, 1, c_int_ne, &s_ws_client1_connected, (void *) 1);
  FUNC1(s_ws_client1_connected, 1);

  FUNC10(nc, WEBSOCKET_OP_TEXT | WEBSOCKET_DONT_FIN, "hall",
                          4);
  FUNC10(nc, WEBSOCKET_OP_CONTINUE | WEBSOCKET_DONT_FIN, "--",
                          2);

  /* Poll 0.5 seconds, we don't expect c_str_ne predicate to return true */
  FUNC14(&mgr, 0.5, c_int_ne, &mb.len, (void *) 0);
  FUNC1(mb.len, 0);

  FUNC10(nc, WEBSOCKET_OP_CONTINUE, "loo", 3);

  FUNC14(&mgr, 1, c_int_ne, &mb.len, (void *) 0);
  FUNC3(&mb, "\0", 1);
  /* Check that test buffer has been filled by the callback properly. */
  FUNC2(mb.buf, "81:[81:{hall--loo}]");

  /*
   * Ping request
   */
  mb.len = 0;
  s_ws_client1_connected = 0;
  FUNC0((nc = FUNC7(&mgr, local_addr, cb_ws_client1)) != NULL);
  FUNC13(nc);
  nc->user_data = &mb;
  FUNC12(nc, "/ws", NULL);
  FUNC14(&mgr, 1, c_int_ne, &s_ws_client1_connected, (void *) 1);
  FUNC1(s_ws_client1_connected, 1);

  FUNC10(nc, WEBSOCKET_OP_PING, "myping", 6);

  {
    /*
     * As a response to Ping, we should first receive Pong (0x8a),
     * and then text message (0x81) with our Ping (0x89) echo.
     */
    const char *expected = "CONTROL:8a:[myping]81:[CONTROL:89:{myping}]";
    FUNC14(&mgr, 1, c_int_eq, &mb.len, (void *) FUNC15(expected));
    FUNC3(&mb, "\0", 1);
    FUNC2(mb.buf, expected);
  }

  /*
   * Ping request injected in between of a fragmented message
   */
  mb.len = 0;
  s_ws_client1_connected = 0;
  FUNC0((nc = FUNC7(&mgr, local_addr, cb_ws_client1)) != NULL);
  FUNC13(nc);
  nc->user_data = &mb;
  FUNC12(nc, "/ws", NULL);
  FUNC14(&mgr, 1, c_int_ne, &s_ws_client1_connected, (void *) 1);
  FUNC1(s_ws_client1_connected, 1);

  FUNC10(nc, WEBSOCKET_OP_TEXT | WEBSOCKET_DONT_FIN, "abc", 3);
  FUNC10(nc, WEBSOCKET_OP_CONTINUE | WEBSOCKET_DONT_FIN, "def",
                          3);

  FUNC10(nc, WEBSOCKET_OP_PING, "0123", 4);

  FUNC10(nc, WEBSOCKET_OP_CONTINUE, "ghi", 3);

  {
    /*
     * As a response to Ping, we should first receive Pong (0x8a),
     * and then text message (0x81) with our Ping (0x89) echo.
     * And then, our fragmented text message: abcdefghi.
     */
    const char *expected =
        "CONTROL:8a:[0123]81:[CONTROL:89:{0123}]81:[81:{abcdefghi}]";
    FUNC14(&mgr, 1, c_int_eq, &mb.len, (void *) FUNC15(expected));
    FUNC3(&mb, "\0", 1);
    FUNC2(mb.buf, expected);
  }

  /*
   * Test illegal text frame in the middle of a fragmented message
   */
  mb.len = 0;
  s_ws_client1_connected = 0;
  FUNC0((nc = FUNC7(&mgr, local_addr, cb_ws_client1)) != NULL);
  FUNC13(nc);
  nc->user_data = &mb;
  FUNC12(nc, "/ws", NULL);
  FUNC14(&mgr, 1, c_int_ne, &s_ws_client1_connected, (void *) 1);
  FUNC1(s_ws_client1_connected, 1);

  /* Send a few parts of a fragmented message */
  FUNC10(nc, WEBSOCKET_OP_TEXT | WEBSOCKET_DONT_FIN, "abc", 3);
  FUNC10(nc, WEBSOCKET_OP_CONTINUE | WEBSOCKET_DONT_FIN, "def",
                          3);

  /* Send (illegal) text frame in the middle of a fragmented message */
  FUNC10(nc, WEBSOCKET_OP_TEXT, "ghi", 3);

  /* Wait until connection is closed by the server */
  FUNC14(&mgr, 1, c_int_ne, &s_ws_client1_connected, (void *) 0);
  FUNC1(s_ws_client1_connected, 0);

  /* Verify the error message */
  FUNC3(&mb, "\0", 1);
  FUNC2(
      mb.buf,
      "CONTROL:88:[non-continuation in the middle of a fragmented message]");

  /*
   * Test closing by the client
   */
  mb.len = 0;
  s_ws_client1_connected = 0;
  FUNC0((nc = FUNC7(&mgr, local_addr, cb_ws_client1)) != NULL);
  FUNC13(nc);
  nc->user_data = &mb;
  FUNC12(nc, "/ws", NULL);
  FUNC14(&mgr, 1, c_int_ne, &s_ws_client1_connected, (void *) 1);
  FUNC1(s_ws_client1_connected, 1);

  /* Send a few parts of a fragmented message */
  FUNC10(nc, WEBSOCKET_OP_CLOSE, "bye", 3);

  /* Wait until connection is closed by the server */
  FUNC14(&mgr, 1, c_int_ne, &s_ws_client1_connected, (void *) 0);
  FUNC1(s_ws_client1_connected, 0);
  /*
   * TODO(dfrank): mongoose closes the connection automatically when
   * mg_send_websocket_frame() is called with a WEBSOCKET_OP_CLOSE op, so we
   * can't hear anything from the server. Server is actually obliged to send
   * the control frame in response, but we can't test it here.
   */

  FUNC8(&mgr);
  FUNC4(&mb);

  return NULL;
}