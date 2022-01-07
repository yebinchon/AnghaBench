
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {double ev_timer_time; int flags; int * priv_2; } ;


 int DBG (char*) ;
 int MG_F_RESOLVING ;

double mg_set_timer(struct mg_connection *c, double timestamp) {
  double result = c->ev_timer_time;
  c->ev_timer_time = timestamp;





  DBG(("%p %p %d -> %lu", c, c->priv_2, (c->flags & MG_F_RESOLVING ? 1 : 0),
       (unsigned long) timestamp));
  if ((c->flags & MG_F_RESOLVING) && c->priv_2 != ((void*)0)) {
    mg_set_timer((struct mg_connection *) c->priv_2, timestamp);
  }
  return result;
}
