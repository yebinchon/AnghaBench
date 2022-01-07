
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
struct TYPE_7__ {int sock; TYPE_1__* server; } ;
typedef TYPE_2__ php_cli_server_client ;
struct TYPE_6__ {int poller; } ;


 int POLLIN ;
 int POLLOUT ;
 int SHUT_RDWR ;
 TYPE_2__* Z_PTR_P (int *) ;
 int closesocket (int ) ;
 int pefree (TYPE_2__*,int) ;
 int php_cli_server_client_dtor (TYPE_2__*) ;
 int php_cli_server_poller_remove (int *,int,int ) ;
 int shutdown (int ,int ) ;

__attribute__((used)) static void php_cli_server_client_dtor_wrapper(zval *zv)
{
 php_cli_server_client *p = Z_PTR_P(zv);

 shutdown(p->sock, SHUT_RDWR);
 closesocket(p->sock);
 php_cli_server_poller_remove(&p->server->poller, POLLIN | POLLOUT, p->sock);
 php_cli_server_client_dtor(p);
 pefree(p, 1);
}
