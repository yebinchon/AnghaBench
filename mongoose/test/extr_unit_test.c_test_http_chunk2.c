
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mg_mgr {int dummy; } ;
struct TYPE_4__ {int len; } ;
struct TYPE_3__ {int len; } ;
struct mg_connection {int * proto_data; int (* proto_data_destructor ) (int *) ;TYPE_2__ message; TYPE_1__ body; int handler; int sock; struct mg_mgr* mgr; } ;
struct http_message {int * proto_data; int (* proto_data_destructor ) (int *) ;TYPE_2__ message; TYPE_1__ body; int handler; int sock; struct mg_mgr* mgr; } ;
typedef int nc ;
typedef int hm ;


 int ASSERT (int ) ;
 int ASSERT_EQ (int ,int) ;
 int ASSERT_EQ64 (int ,size_t) ;
 int ASSERT_STREQ (char*,char*) ;
 int INVALID_SOCKET ;
 int eh_chunk2 ;
 int memset (struct mg_connection*,int ,int) ;
 int mg_handle_chunked (struct mg_connection*,struct mg_connection*,char*,int ) ;
 int mg_http_create_proto_data (struct mg_connection*) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 char* s_events ;
 int s_handle_chunk_event ;
 int strcat (char*,char*) ;
 int strlen (char*) ;
 int stub1 (int *) ;

__attribute__((used)) static const char *test_http_chunk2(void) {
  struct mg_connection nc;
  struct http_message hm;
  char buf[100] = "5\r\nhe";
  struct mg_mgr mgr;
  mg_mgr_init(&mgr, ((void*)0));

  memset(&nc, 0, sizeof(nc));
  memset(&hm, 0, sizeof(hm));
  nc.mgr = &mgr;
  nc.sock = INVALID_SOCKET;
  nc.handler = eh_chunk2;
  mg_http_create_proto_data(&nc);
  hm.message.len = hm.body.len = ~0;

  s_handle_chunk_event = 0;
  ASSERT_EQ(mg_handle_chunked(&nc, &hm, buf, strlen(buf)), 0);


  strcat(buf, "llo\r");
  ASSERT_EQ(mg_handle_chunked(&nc, &hm, buf, strlen(buf)), 0);
  ASSERT_STREQ(buf, "5\r\nhello\r");

  strcat(buf, "\n");
  ASSERT_EQ(mg_handle_chunked(&nc, &hm, buf, strlen(buf)), 5);
  ASSERT_STREQ(buf, "hello");

  s_handle_chunk_event = 1;
  strcat(buf, "3\r\n:-)\r\n");
  ASSERT_EQ(mg_handle_chunked(&nc, &hm, buf, strlen(buf)), 8);
  ASSERT_STREQ(buf, "");

  s_handle_chunk_event = 0;
  strcat(buf, "3\r\n...\r\na\r\n0123456789\r\n0\r");
  ASSERT_EQ(mg_handle_chunked(&nc, &hm, buf, strlen(buf)), 13);
  ASSERT_STREQ(buf, "...01234567890\r");
  ASSERT_EQ64(hm.message.len, (size_t) ~0);

  strcat(buf, "\n\r\n");
  ASSERT_EQ(mg_handle_chunked(&nc, &hm, buf, strlen(buf)), 13);
  ASSERT_STREQ(buf, "...0123456789");
  ASSERT_EQ(hm.message.len, 13);

  ASSERT_STREQ(s_events, "_102_102_102_102");

  ASSERT(nc.proto_data != ((void*)0));
  nc.proto_data_destructor(nc.proto_data);

  mg_mgr_free(&mgr);

  return ((void*)0);
}
