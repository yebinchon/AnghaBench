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
struct mg_mgr {int dummy; } ;
struct mg_connection {struct big_payload_params* user_data; } ;
struct big_payload_params {char* buf; int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  c_str_ne ; 
 int /*<<< orphan*/  cb3_big ; 
 int /*<<< orphan*/  cb4_big ; 
 struct mg_connection* FUNC2 (struct mg_mgr*,char const*,int /*<<< orphan*/ ) ; 
 struct mg_connection* FUNC3 (struct mg_mgr*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_connection*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC8 (struct mg_mgr*,int,int /*<<< orphan*/ ,char*,void*) ; 

__attribute__((used)) static const char *FUNC9(void) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  const char *local_addr = "127.0.0.1:7778";
  char buf[20] = "";
  struct big_payload_params params;
  params.buf = buf;

  FUNC5(&mgr, NULL);
  /* mgr.hexdump_file = "-"; */
  FUNC0((nc = FUNC2(&mgr, local_addr, cb3_big)) != NULL);
  FUNC7(nc);

  /* Websocket request */
  FUNC0((nc = FUNC3(&mgr, local_addr, cb4_big)) != NULL);
  FUNC7(nc);
  params.size = 8192;
  nc->user_data = &params;
  params.buf[0] = '\0';
  FUNC6(nc, "/ws", NULL);
  FUNC8(&mgr, 1, c_str_ne, params.buf, (void *) "");

  /* Check that test buffer has been filled by the callback properly. */
  FUNC1(buf, "success");

  /* Websocket request */
  FUNC0((nc = FUNC3(&mgr, local_addr, cb4_big)) != NULL);
  FUNC7(nc);
  params.size = 65535;
  nc->user_data = &params;
  params.buf[0] = '\0';
  FUNC6(nc, "/ws", NULL);
  FUNC8(&mgr, 1, c_str_ne, params.buf, (void *) "");
  FUNC4(&mgr);

  /* Check that test buffer has been filled by the callback properly. */
  FUNC1(buf, "success");

  return NULL;
}