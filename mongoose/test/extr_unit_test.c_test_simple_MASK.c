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
struct simple_data {int /*<<< orphan*/  num_close; int /*<<< orphan*/  num_send; int /*<<< orphan*/  num_recv; int /*<<< orphan*/  num_connect; int /*<<< orphan*/  num_accept; int /*<<< orphan*/  fail; int /*<<< orphan*/  data_rcvd; int /*<<< orphan*/  to_send; struct mg_connection* sclient_nc; struct simple_data* sclient_data; } ;
struct mg_mgr {int dummy; } ;
struct mg_connection {struct simple_data* user_data; } ;
typedef  int /*<<< orphan*/  server_data ;
typedef  int /*<<< orphan*/  sclient_data ;
typedef  int /*<<< orphan*/  client_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  cb_client ; 
 int /*<<< orphan*/  cb_server ; 
 int /*<<< orphan*/  FUNC3 (struct simple_data*,int /*<<< orphan*/ ,int) ; 
 struct mg_connection* FUNC4 (struct mg_mgr*,char const*,int /*<<< orphan*/ ) ; 
 struct mg_connection* FUNC5 (struct mg_mgr*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC7 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mg_mgr*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static const char *FUNC10(void) {
  struct mg_mgr mgr;
  struct mg_connection *nc_server, *nc_client, *nc_sclient;
  const char *address = "tcp://127.0.0.1:8910";
  struct simple_data client_data, server_data, sclient_data;

  (void) nc_sclient;
  FUNC7(&mgr, NULL);

  FUNC0((nc_server = FUNC4(&mgr, address, cb_server)) != NULL);
  nc_server->user_data = &server_data;
  FUNC3(&server_data, 0, sizeof(server_data));
  server_data.sclient_data = &sclient_data;
  FUNC3(&sclient_data, 0, sizeof(sclient_data));

  FUNC8(&mgr, 1); /* 1 - nothing */

  FUNC0((nc_client = FUNC5(&mgr, address, cb_client)) != NULL);
  nc_client->user_data = &client_data;
  FUNC3(&client_data, 0, sizeof(client_data));
  FUNC9(client_data.to_send, "hi");

  FUNC8(&mgr, 1); /* 2 - client connects and sends, server accepts */
  FUNC1(server_data.num_accept, 0);
  FUNC1(sclient_data.num_accept, 1);
  FUNC1(client_data.num_connect, 1);
  FUNC1(client_data.num_send, 1);
  FUNC2(client_data.fail, "");
  FUNC2(server_data.fail, "");

  FUNC0(server_data.sclient_nc != NULL);
  nc_sclient = server_data.sclient_nc;
  FUNC1(sclient_data.num_send, 0);
  FUNC1(sclient_data.num_recv, 0);

  FUNC9(sclient_data.to_send, "hello");
  FUNC8(&mgr, 1); /* 3 - server receives, buffers response, closes */
  FUNC2(sclient_data.fail, "");
  FUNC1(sclient_data.num_recv, 1);
  FUNC1(sclient_data.num_send, 0);
  FUNC1(client_data.num_recv, 0);
  FUNC2(sclient_data.data_rcvd, "hi");

  FUNC8(&mgr, 1); /* 4 - server sends */
  FUNC2(sclient_data.fail, "");
  FUNC1(sclient_data.num_send, 1);

  FUNC8(&mgr, 1); /* 5 - client receives */
  FUNC2(client_data.fail, "");
  FUNC1(client_data.num_recv, 1);
  FUNC2(client_data.data_rcvd, "hello");

  FUNC6(&mgr);

  FUNC2(client_data.fail, "");
  FUNC2(server_data.fail, "");
  FUNC2(sclient_data.fail, "");

  FUNC1(server_data.num_accept, 0);
  FUNC1(server_data.num_connect, 0);
  FUNC1(server_data.num_recv, 0);
  FUNC1(server_data.num_send, 0);
  FUNC1(server_data.num_close, 1);

  FUNC1(client_data.num_accept, 0);
  FUNC1(client_data.num_connect, 1);
  FUNC1(client_data.num_recv, 1);
  FUNC1(client_data.num_send, 1);
  FUNC1(client_data.num_close, 1);

  FUNC1(sclient_data.num_accept, 1);
  FUNC1(sclient_data.num_connect, 0);
  FUNC1(sclient_data.num_recv, 1);
  FUNC1(sclient_data.num_send, 1);
  FUNC1(sclient_data.num_close, 1);

  return NULL;
}