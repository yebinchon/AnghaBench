
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {int dummy; } ;
struct mg_connection {int* user_data; int ev_timer_time; int flags; } ;


 int ASSERT (int ) ;
 int ASSERT_EQ (int,int) ;
 int ASSERT_GT (double,double) ;
 int ASSERT_LT (double,double) ;
 int INVALID_SOCKET ;
 int MG_F_CLOSE_IMMEDIATELY ;
 int c_int_eq ;
 int ev_timer_handler ;
 struct mg_connection* mg_add_sock (struct mg_mgr*,int ,int ) ;
 struct mg_connection* mg_connect (struct mg_mgr*,char*,int ) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_mgr_poll (struct mg_mgr*,int) ;
 int mg_set_timer (struct mg_connection*,int) ;
 double mg_time () ;
 int poll_until (struct mg_mgr*,int,int ,int*,void*) ;

__attribute__((used)) static const char *test_timer(void) {
  struct mg_mgr m;
  struct mg_connection *c;
  double begin, end;
  int n = 0, i;

  mg_mgr_init(&m, ((void*)0));
  ASSERT((c = mg_add_sock(&m, INVALID_SOCKET, ev_timer_handler)) != ((void*)0));
  c->user_data = &n;


  mg_mgr_poll(&m, 1);
  ASSERT_EQ(n, 0);





  ASSERT_EQ(mg_set_timer(c, mg_time() + 0.1), 0.0);
  begin = mg_time();




  for (i = 0; n != 1 && i < 5; i++) {
    mg_mgr_poll(&m, 1000);
  }
  end = mg_time();
  ASSERT_EQ(n, 1);
  ASSERT_LT(end - begin, 0.9);
  ASSERT_GT(end - begin, 0.09);


  ASSERT_EQ(c->ev_timer_time, 0.0);
  mg_mgr_poll(&m, 1);
  ASSERT_EQ(n, 1);

  c->flags |= MG_F_CLOSE_IMMEDIATELY;
  mg_mgr_poll(&m, 1);
  ASSERT_EQ(n, 101);


  n = 0;
  ASSERT((c = mg_connect(&m, "awful.sad:1234", ev_timer_handler)) != ((void*)0));
  c->user_data = &n;
  mg_set_timer(c, 1);
  poll_until(&m, 1, c_int_eq, &n, (void *) 101);
  ASSERT_EQ(n, 101);

  mg_mgr_free(&m);

  return ((void*)0);
}
