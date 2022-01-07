
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf; int len; } ;
struct udp_res {TYPE_1__ buf_clnt; TYPE_1__ buf_srv; } ;
struct mg_mgr {int dummy; } ;
struct mg_connection {int dummy; } ;
typedef int res ;


 int ASSERT (int ) ;
 int ASSERT_STREQ_NZ (int ,char*) ;
 int c_int_eq ;
 int eh3_clnt ;
 int eh3_srv ;
 int mbuf_free (TYPE_1__*) ;
 int mbuf_init (TYPE_1__*,int) ;
 int memset (struct udp_res*,int ,int) ;
 struct mg_connection* mg_bind (struct mg_mgr*,char const*,int ) ;
 struct mg_connection* mg_connect (struct mg_mgr*,char const*,int ) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,struct udp_res*) ;
 int poll_until (struct mg_mgr*,int,int ,int *,void*) ;

__attribute__((used)) static const char *test_udp(void) {
  struct mg_mgr mgr;
  struct mg_connection *nc1, *nc2;
  const char *address = "udp://127.0.0.1:7878";
  struct udp_res res;
  memset(&res, 0, sizeof(res));
  mbuf_init(&res.buf_srv, 100);
  mbuf_init(&res.buf_clnt, 100);

  mg_mgr_init(&mgr, &res);
  ASSERT((nc1 = mg_bind(&mgr, address, eh3_srv)) != ((void*)0));
  ASSERT((nc2 = mg_connect(&mgr, address, eh3_clnt)) != ((void*)0));

  poll_until(&mgr, 1, c_int_eq, &res.buf_clnt.len, (void *) 23);
  ASSERT_STREQ_NZ(res.buf_srv.buf, "ACCEPT+ RECV boo! CLOSE");
  ASSERT_STREQ_NZ(res.buf_clnt.buf, "CONNECT RECV boo! CLOSE");

  mbuf_free(&res.buf_srv);
  mbuf_free(&res.buf_clnt);
  mg_mgr_free(&mgr);

  return ((void*)0);
}
