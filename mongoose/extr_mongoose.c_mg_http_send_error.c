
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int flags; } ;


 int LL_DEBUG ;
 int LOG (int ,char*) ;
 int MG_F_SEND_AND_CLOSE ;
 int mg_send (struct mg_connection*,char const*,int ) ;
 int mg_send_head (struct mg_connection*,int,int ,char*) ;
 char* mg_status_message (int) ;
 int strlen (char const*) ;

void mg_http_send_error(struct mg_connection *nc, int code,
                        const char *reason) {
  if (!reason) reason = mg_status_message(code);
  LOG(LL_DEBUG, ("%p %d %s", nc, code, reason));
  mg_send_head(nc, code, strlen(reason),
               "Content-Type: text/plain\r\nConnection: close");
  mg_send(nc, reason, strlen(reason));
  nc->flags |= MG_F_SEND_AND_CLOSE;
}
