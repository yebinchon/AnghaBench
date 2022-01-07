
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {int dummy; } ;


 int ev_handler ;
 int mg_bind (struct mg_mgr*,char const*,int ) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_mgr_poll (struct mg_mgr*,int) ;
 int printf (char*,char const*,char const*) ;

int main(void) {
  struct mg_mgr mgr;
  const char *port1 = "udp://1234", *port2 = "udp://127.0.0.1:17000";

  mg_mgr_init(&mgr, ((void*)0));
  mg_bind(&mgr, port1, ev_handler);
  mg_bind(&mgr, port2, ev_handler);

  printf("Starting echo mgr on ports %s, %s\n", port1, port2);
  for (;;) {
    mg_mgr_poll(&mgr, 1000);
  }
  mg_mgr_free(&mgr);

  return 0;
}
