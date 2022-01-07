
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct web_client {int client_port; int client_ip; int id; } ;


 int gettid () ;
 int log_access (char*,int ,int ,int ,int ,char const*) ;

void web_server_log_connection(struct web_client *w, const char *msg) {
    log_access("%llu: %d '[%s]:%s' '%s'", w->id, gettid(), w->client_ip, w->client_port, msg);
}
