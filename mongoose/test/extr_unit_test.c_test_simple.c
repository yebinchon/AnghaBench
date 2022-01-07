
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simple_data {int num_close; int num_send; int num_recv; int num_connect; int num_accept; int fail; int data_rcvd; int to_send; struct mg_connection* sclient_nc; struct simple_data* sclient_data; } ;
struct mg_mgr {int dummy; } ;
struct mg_connection {struct simple_data* user_data; } ;
typedef int server_data ;
typedef int sclient_data ;
typedef int client_data ;


 int ASSERT (int ) ;
 int ASSERT_EQ (int ,int) ;
 int ASSERT_STREQ (int ,char*) ;
 int cb_client ;
 int cb_server ;
 int memset (struct simple_data*,int ,int) ;
 struct mg_connection* mg_bind (struct mg_mgr*,char const*,int ) ;
 struct mg_connection* mg_connect (struct mg_mgr*,char const*,int ) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_mgr_poll (struct mg_mgr*,int) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static const char *test_simple(void) {
  struct mg_mgr mgr;
  struct mg_connection *nc_server, *nc_client, *nc_sclient;
  const char *address = "tcp://127.0.0.1:8910";
  struct simple_data client_data, server_data, sclient_data;

  (void) nc_sclient;
  mg_mgr_init(&mgr, ((void*)0));

  ASSERT((nc_server = mg_bind(&mgr, address, cb_server)) != ((void*)0));
  nc_server->user_data = &server_data;
  memset(&server_data, 0, sizeof(server_data));
  server_data.sclient_data = &sclient_data;
  memset(&sclient_data, 0, sizeof(sclient_data));

  mg_mgr_poll(&mgr, 1);

  ASSERT((nc_client = mg_connect(&mgr, address, cb_client)) != ((void*)0));
  nc_client->user_data = &client_data;
  memset(&client_data, 0, sizeof(client_data));
  strcpy(client_data.to_send, "hi");

  mg_mgr_poll(&mgr, 1);
  ASSERT_EQ(server_data.num_accept, 0);
  ASSERT_EQ(sclient_data.num_accept, 1);
  ASSERT_EQ(client_data.num_connect, 1);
  ASSERT_EQ(client_data.num_send, 1);
  ASSERT_STREQ(client_data.fail, "");
  ASSERT_STREQ(server_data.fail, "");

  ASSERT(server_data.sclient_nc != ((void*)0));
  nc_sclient = server_data.sclient_nc;
  ASSERT_EQ(sclient_data.num_send, 0);
  ASSERT_EQ(sclient_data.num_recv, 0);

  strcpy(sclient_data.to_send, "hello");
  mg_mgr_poll(&mgr, 1);
  ASSERT_STREQ(sclient_data.fail, "");
  ASSERT_EQ(sclient_data.num_recv, 1);
  ASSERT_EQ(sclient_data.num_send, 0);
  ASSERT_EQ(client_data.num_recv, 0);
  ASSERT_STREQ(sclient_data.data_rcvd, "hi");

  mg_mgr_poll(&mgr, 1);
  ASSERT_STREQ(sclient_data.fail, "");
  ASSERT_EQ(sclient_data.num_send, 1);

  mg_mgr_poll(&mgr, 1);
  ASSERT_STREQ(client_data.fail, "");
  ASSERT_EQ(client_data.num_recv, 1);
  ASSERT_STREQ(client_data.data_rcvd, "hello");

  mg_mgr_free(&mgr);

  ASSERT_STREQ(client_data.fail, "");
  ASSERT_STREQ(server_data.fail, "");
  ASSERT_STREQ(sclient_data.fail, "");

  ASSERT_EQ(server_data.num_accept, 0);
  ASSERT_EQ(server_data.num_connect, 0);
  ASSERT_EQ(server_data.num_recv, 0);
  ASSERT_EQ(server_data.num_send, 0);
  ASSERT_EQ(server_data.num_close, 1);

  ASSERT_EQ(client_data.num_accept, 0);
  ASSERT_EQ(client_data.num_connect, 1);
  ASSERT_EQ(client_data.num_recv, 1);
  ASSERT_EQ(client_data.num_send, 1);
  ASSERT_EQ(client_data.num_close, 1);

  ASSERT_EQ(sclient_data.num_accept, 1);
  ASSERT_EQ(sclient_data.num_connect, 0);
  ASSERT_EQ(sclient_data.num_recv, 1);
  ASSERT_EQ(sclient_data.num_send, 1);
  ASSERT_EQ(sclient_data.num_close, 1);

  return ((void*)0);
}
