
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int SSL_SESSION_set1_ticket_appdata (int ,int ,int ) ;
 int SSL_get_session (int *) ;
 int appdata ;
 int gen_tick_called ;
 int strlen (int ) ;

__attribute__((used)) static int gen_tick_cb(SSL *s, void *arg)
{
    gen_tick_called = 1;

    return SSL_SESSION_set1_ticket_appdata(SSL_get_session(s), appdata,
                                           strlen(appdata));
}
