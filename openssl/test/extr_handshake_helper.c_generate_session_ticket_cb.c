
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* session_ticket_app_data; } ;
typedef int SSL_SESSION ;
typedef int SSL ;
typedef TYPE_1__ CTX_DATA ;


 int SSL_SESSION_set1_ticket_appdata (int *,char*,int ) ;
 int * SSL_get_session (int *) ;
 int strlen (char*) ;

__attribute__((used)) static int generate_session_ticket_cb(SSL *s, void *arg)
{
    CTX_DATA *server_ctx_data = arg;
    SSL_SESSION *ss = SSL_get_session(s);
    char *app_data = server_ctx_data->session_ticket_app_data;

    if (ss == ((void*)0) || app_data == ((void*)0))
        return 0;

    return SSL_SESSION_set1_ticket_appdata(ss, app_data, strlen(app_data));
}
