#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mg_mgr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; } ;
struct TYPE_3__ {int /*<<< orphan*/  len; } ;
struct mg_connection {int /*<<< orphan*/ * proto_data; int /*<<< orphan*/  (* proto_data_destructor ) (int /*<<< orphan*/ *) ;TYPE_2__ message; TYPE_1__ body; int /*<<< orphan*/  handler; int /*<<< orphan*/  sock; struct mg_mgr* mgr; } ;
struct http_message {int /*<<< orphan*/ * proto_data; int /*<<< orphan*/  (* proto_data_destructor ) (int /*<<< orphan*/ *) ;TYPE_2__ message; TYPE_1__ body; int /*<<< orphan*/  handler; int /*<<< orphan*/  sock; struct mg_mgr* mgr; } ;
typedef  int /*<<< orphan*/  nc ;
typedef  int /*<<< orphan*/  hm ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  INVALID_SOCKET ; 
 int /*<<< orphan*/  eh_chunk2 ; 
 int /*<<< orphan*/  FUNC4 (struct mg_connection*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_connection*,struct mg_connection*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC7 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC8 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 char* s_events ; 
 int s_handle_chunk_event ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *FUNC12(void) {
  struct mg_connection nc;
  struct http_message hm;
  char buf[100] = "5\r\nhe";
  struct mg_mgr mgr;
  FUNC8(&mgr, NULL);

  FUNC4(&nc, 0, sizeof(nc));
  FUNC4(&hm, 0, sizeof(hm));
  nc.mgr = &mgr;
  nc.sock = INVALID_SOCKET;
  nc.handler = eh_chunk2;
  FUNC6(&nc);
  hm.message.len = hm.body.len = ~0;

  s_handle_chunk_event = 0;
  FUNC1(FUNC5(&nc, &hm, buf, FUNC10(buf)), 0);

  /* Simulate arrival of chunks. MG_EV_HTTP_CHUNK events are not handled. */
  FUNC9(buf, "llo\r");
  FUNC1(FUNC5(&nc, &hm, buf, FUNC10(buf)), 0);
  FUNC3(buf, "5\r\nhello\r");

  FUNC9(buf, "\n");
  FUNC1(FUNC5(&nc, &hm, buf, FUNC10(buf)), 5);
  FUNC3(buf, "hello");

  s_handle_chunk_event = 1;
  FUNC9(buf, "3\r\n:-)\r\n");
  FUNC1(FUNC5(&nc, &hm, buf, FUNC10(buf)), 8);
  FUNC3(buf, "");

  s_handle_chunk_event = 0;
  FUNC9(buf, "3\r\n...\r\na\r\n0123456789\r\n0\r");
  FUNC1(FUNC5(&nc, &hm, buf, FUNC10(buf)), 13);
  FUNC3(buf, "...01234567890\r");
  FUNC2(hm.message.len, (size_t) ~0);

  FUNC9(buf, "\n\r\n");
  FUNC1(FUNC5(&nc, &hm, buf, FUNC10(buf)), 13);
  FUNC3(buf, "...0123456789");
  FUNC1(hm.message.len, 13);

  FUNC3(s_events, "_102_102_102_102");

  FUNC0(nc.proto_data != NULL);
  nc.proto_data_destructor(nc.proto_data);

  FUNC7(&mgr);

  return NULL;
}