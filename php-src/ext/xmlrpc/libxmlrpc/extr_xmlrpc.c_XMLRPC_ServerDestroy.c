
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int docslist; int methodlist; scalar_t__ xIntrospection; scalar_t__ desc; struct TYPE_8__* name; } ;
typedef TYPE_1__ server_method ;
typedef TYPE_1__ doc_method ;
typedef TYPE_1__* XMLRPC_SERVER ;


 int Q_Destroy (int *) ;
 TYPE_1__* Q_Head (int *) ;
 TYPE_1__* Q_Next (int *) ;
 int XMLRPC_CleanupValue (scalar_t__) ;
 int my_free (TYPE_1__*) ;

void XMLRPC_ServerDestroy(XMLRPC_SERVER server) {
   if(server) {
      doc_method* dm = Q_Head(&server->docslist);
      server_method* sm = Q_Head(&server->methodlist);
      while( dm ) {
         my_free(dm);
         dm = Q_Next(&server->docslist);
      }
      while( sm ) {
         my_free(sm->name);
         if(sm->desc) {
            XMLRPC_CleanupValue(sm->desc);
         }
         my_free(sm);
         sm = Q_Next(&server->methodlist);
      }
      if (server->xIntrospection) {
         XMLRPC_CleanupValue(server->xIntrospection);
      }

      Q_Destroy(&server->methodlist);
      Q_Destroy(&server->docslist);
      my_free(server);
   }
}
