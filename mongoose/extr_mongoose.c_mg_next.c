
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mgr {struct mg_connection* active_connections; } ;
struct mg_connection {struct mg_connection* next; } ;



struct mg_connection *mg_next(struct mg_mgr *s, struct mg_connection *conn) {
  return conn == ((void*)0) ? s->active_connections : conn->next;
}
