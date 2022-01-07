
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_ssl_session_t ;
typedef int ngx_ssl_conn_t ;
struct TYPE_6__ {TYPE_1__* ssl; } ;
typedef TYPE_2__ ngx_connection_t ;
struct TYPE_5__ {int * session; int (* save_session ) (TYPE_2__*) ;} ;


 TYPE_2__* ngx_ssl_get_connection (int *) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int
ngx_ssl_new_client_session(ngx_ssl_conn_t *ssl_conn, ngx_ssl_session_t *sess)
{
    ngx_connection_t *c;

    c = ngx_ssl_get_connection(ssl_conn);

    if (c->ssl->save_session) {
        c->ssl->session = sess;

        c->ssl->save_session(c);

        c->ssl->session = ((void*)0);
    }

    return 0;
}
