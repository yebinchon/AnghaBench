
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {struct mg_connection* active_connections; } ;
struct mg_connection {double ev_timer_time; struct mg_connection* next; } ;



double mg_mgr_min_timer(const struct mg_mgr *mgr) {
  double min_timer = 0;
  struct mg_connection *nc;
  for (nc = mgr->active_connections; nc != ((void*)0); nc = nc->next) {
    if (nc->ev_timer_time <= 0) continue;
    if (min_timer == 0 || nc->ev_timer_time < min_timer) {
      min_timer = nc->ev_timer_time;
    }
  }
  return min_timer;
}
