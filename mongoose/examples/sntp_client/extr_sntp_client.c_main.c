
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {int dummy; } ;
struct mg_connection {int dummy; } ;


 int ev_handler ;
 int fprintf (int ,char*,char*) ;
 int mg_mgr_free (struct mg_mgr*) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_mgr_poll (struct mg_mgr*,int) ;
 struct mg_connection* mg_sntp_get_time (struct mg_mgr*,int ,char*) ;
 char* s_default_server ;
 scalar_t__ s_exit_flag ;
 int stderr ;

int main() {
  struct mg_mgr mgr;
  struct mg_connection *c;

  mg_mgr_init(&mgr, ((void*)0));

  c = mg_sntp_get_time(&mgr, ev_handler, s_default_server);

  if (c == ((void*)0)) {
    fprintf(stderr, "Failed to connect to %s\n", s_default_server);
    return -1;
  }

  while (s_exit_flag == 0) {
    mg_mgr_poll(&mgr, 1000);
  }

  mg_mgr_free(&mgr);

  return 0;
}
