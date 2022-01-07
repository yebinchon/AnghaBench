
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_ssl_session_t ;
struct TYPE_5__ {TYPE_1__* ssl; } ;
typedef TYPE_2__ ngx_connection_t ;
struct TYPE_4__ {int connection; int * session; } ;


 int SSL_SESSION_up_ref (int *) ;
 int * SSL_get1_session (int ) ;

ngx_ssl_session_t *
ngx_ssl_get_session(ngx_connection_t *c)
{







    return SSL_get1_session(c->ssl->connection);
}
