
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* XMLRPC_SERVER ;
struct TYPE_5__ {int docslist; int methodlist; } ;
typedef int STRUCT_XMLRPC_SERVER ;


 int Q_Init (int *) ;
 TYPE_1__* ecalloc (int,int) ;
 int xsm_register (TYPE_1__*) ;

XMLRPC_SERVER XMLRPC_ServerCreate() {
   XMLRPC_SERVER server = ecalloc(1, sizeof(STRUCT_XMLRPC_SERVER));
   if(server) {
      Q_Init(&server->methodlist);
      Q_Init(&server->docslist);


      xsm_register(server);
   }
   return server;
}
