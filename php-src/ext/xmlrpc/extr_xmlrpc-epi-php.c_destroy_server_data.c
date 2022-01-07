
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int introspection_map; int method_map; int server_ptr; } ;
typedef TYPE_1__ xmlrpc_server_data ;


 int XMLRPC_ServerDestroy (int ) ;
 int efree (TYPE_1__*) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void destroy_server_data(xmlrpc_server_data *server)
{
 if (server) {
  XMLRPC_ServerDestroy(server->server_ptr);

  zval_ptr_dtor(&server->method_map);
  zval_ptr_dtor(&server->introspection_map);

  efree(server);
 }
}
