
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {int dummy; } ;
struct mg_connection {int recv_mbuf_limit; void* handler; } ;


 int ASSERT (int ) ;
 int ASSERT_EQ (int,int) ;
 int c_int_eq ;
 int ehb_srv ;
 void* ehb_srv2 ;
 struct mg_connection* mg_bind (struct mg_mgr*,char const*,int ) ;
 struct mg_connection* mg_connect (struct mg_mgr*,char const*,int *) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int*) ;
 int mg_printf (struct mg_connection*,char*) ;
 int mg_set_protocol_mqtt (struct mg_connection*) ;
 int poll_until (struct mg_mgr*,int,int ,int*,void*) ;

__attribute__((used)) static const char *test_buffer_limit(void) {
  struct mg_mgr mgr;
  struct mg_connection *clnt, *srv;
  const char *address = "tcp://127.0.0.1:7878";
  int res = 0;

  mg_mgr_init(&mgr, &res);
  ASSERT((srv = mg_bind(&mgr, address, ehb_srv)) != ((void*)0));
  srv->recv_mbuf_limit = 1;
  ASSERT((clnt = mg_connect(&mgr, address, ((void*)0))) != ((void*)0));
  mg_printf(clnt, "abcd");

  poll_until(&mgr, 1, c_int_eq, &res, (void *) 4);


  ASSERT_EQ(res, 4);





  res = 0;
  srv->handler = ehb_srv2;
  ASSERT((clnt = mg_connect(&mgr, address, ((void*)0))) != ((void*)0));
  mg_printf(clnt, "abcd");
  poll_until(&mgr, 1, c_int_eq, &res, (void *) 1);
  ASSERT_EQ(res, 0);





  res = 0;
  srv->handler = ehb_srv2;
  mg_set_protocol_mqtt(srv);
  ASSERT((clnt = mg_connect(&mgr, address, ((void*)0))) != ((void*)0));
  mg_printf(clnt, "abcd");
  poll_until(&mgr, 1, c_int_eq, &res, (void *) 1);
  ASSERT_EQ(res, 1);

  mg_mgr_free(&mgr);
  return ((void*)0);
}
