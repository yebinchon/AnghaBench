
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * desc; scalar_t__ method; int name; } ;
typedef TYPE_1__ server_method ;
typedef TYPE_2__* XMLRPC_SERVER ;
typedef scalar_t__ XMLRPC_Callback ;
struct TYPE_7__ {int methodlist; } ;


 int Q_PushTail (int *,TYPE_1__*) ;
 TYPE_1__* emalloc (int) ;
 int estrdup (char const*) ;

int XMLRPC_ServerRegisterMethod(XMLRPC_SERVER server, const char *name, XMLRPC_Callback cb) {
   if(server && name && cb) {

      server_method* sm = emalloc(sizeof(server_method));

      if(sm) {
         sm->name = estrdup(name);
         sm->method = cb;
         sm->desc = ((void*)0);

         return Q_PushTail(&server->methodlist, sm);
      }
   }
   return 0;
}
